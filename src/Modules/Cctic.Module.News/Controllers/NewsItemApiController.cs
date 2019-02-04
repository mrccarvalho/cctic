using System;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Net.Http.Headers;
using Cctic.Infrastructure.Data;
using Cctic.Infrastructure.Web.SmartTable;
using Cctic.Module.Core.Extensions;
using Cctic.Module.Core.Models;
using Cctic.Module.Core.Services;
using Cctic.Module.News.Models;
using Cctic.Module.News.Services;
using Cctic.Module.News.ViewModels;

namespace Cctic.Module.News.Controllers
{
    [Authorize(Roles = "admin")]
    [Route("api/news-items")]
    public class NewsItemApiController : Controller
    {
        private readonly IRepository<NewsItem> _newsItemRepository;
        private readonly INewsItemService _newsItemService;
        private readonly IMediaService _mediaService;
        private readonly IWorkContext _workContext;

        public NewsItemApiController(IRepository<NewsItem> newsItemRepository, INewsItemService newsItemService, IMediaService mediaService, IWorkContext workContext)
        {
            _newsItemRepository = newsItemRepository;
            _newsItemService = newsItemService;
            _mediaService = mediaService;
            _workContext = workContext;
        }

        [HttpPost("grid")]
        public IActionResult Get([FromBody] SmartTableParam param)
        {
            var query = _newsItemRepository.Query().Where(x => !x.IsDeleted);

            if (param.Search.PredicateObject != null)
            {
                dynamic search = param.Search.PredicateObject;

                if (search.Name != null)
                {
                    string name = search.Name;
                    query = query.Where(x => x.Name.Contains(name));
                }

                if (search.CreatedOn != null)
                {
                    if (search.CreatedOn.before != null)
                    {
                        DateTimeOffset before = search.CreatedOn.before;
                        query = query.Where(x => x.CreatedOn <= before);
                    }

                    if (search.CreatedOn.after != null)
                    {
                        DateTimeOffset after = search.CreatedOn.after;
                        query = query.Where(x => x.CreatedOn >= after);
                    }
                }
            }

            var newsItems = query.ToSmartTableResult(
                param,
                x => new
                {
                    Id = x.Id,
                    Name = x.Name,
                    Slug = x.SeoTitle,
                    IsPublished = x.IsPublished,
                    CreatedOn = x.CreatedOn
                });
            return Json(newsItems);
        }

        [HttpGet("{id}")]
        public IActionResult Get(long id)
        {
            var newsItem = _newsItemRepository.Query()
               .Include(x => x.ThumbnailImage)
               .Include(x => x.Categories)
               .FirstOrDefault(x => x.Id == id);

            var model = new NewsItemForm()
            {
                Name = newsItem.Name,
                //Alteração 01/12/2018
                Abrev = newsItem.Abrev,
                Id = newsItem.Id,
                Slug = newsItem.SeoTitle,
                ShortContent = newsItem.ShortContent,
                FullContent = newsItem.FullContent,
                IsPublished = newsItem.IsPublished,
                CreatedOn = newsItem.CreatedOn,
                ThumbnailImageUrl = _mediaService.GetThumbnailUrl(newsItem.ThumbnailImage),
                NewsCategoryIds = newsItem.Categories.Select( x => x.CategoryId).ToList()
            };

            return Json(model);
        }

        [HttpPost]
        public async Task<IActionResult> Post(NewsItemForm model)
        {
            if (!ModelState.IsValid)
            {
                return new BadRequestObjectResult(ModelState);
            }

            var currentUser = await _workContext.GetCurrentUser();
            var newsItem = new NewsItem
            {
                Name = model.Name,
                //Alteração 01/12/2018
                Abrev = model.Abrev,
                SeoTitle = model.Slug,
                ShortContent = model.ShortContent,
                FullContent = model.FullContent,
                //IsPublished = model.IsPublished  - Alteração 02/11/2018
                IsPublished = model.IsPublished,
                CreatedOn = model.CreatedOn,
                PublishedOn = model.CreatedOn,
                CreatedBy = currentUser
                
                
            };

            foreach (var categoryId in model.NewsCategoryIds)
            {
                var newsItemCategory = new NewsItemCategory
                {
                    CategoryId = categoryId
                };
                newsItem.AddNewsItemCategory(newsItemCategory);
            }

            await SaveServiceMedia(model.ThumbnailImage, newsItem);
            _newsItemService.Create(newsItem);
            return CreatedAtAction(nameof(Get), new { id = newsItem.Id }, null);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Put(long id, NewsItemForm model)
        {
            if (!ModelState.IsValid)
            {
                return new BadRequestObjectResult(ModelState);
            } 

            var newsItem = _newsItemRepository.Query()
               .Include(x => x.ThumbnailImage)
               .Include(x => x.Categories)
               .FirstOrDefault(x => x.Id == id);

            var currentUser = await _workContext.GetCurrentUser();

            newsItem.Name = model.Name;
            //Alteração 01/12/2018
            newsItem.Abrev = model.Abrev;
            newsItem.SeoTitle = model.Slug;
            newsItem.ShortContent = model.ShortContent;
            newsItem.FullContent = model.FullContent;
            newsItem.IsPublished = model.IsPublished;
             //IsPublished = model.IsPublished  - Alteração 02/11/2018
            newsItem.CreatedOn = model.CreatedOn;
            newsItem.UpdatedOn = DateTimeOffset.Now;
            newsItem.UpdatedBy = currentUser;
            newsItem.PublishedOn = model.CreatedOn;

            AddOrDeleteCategories(model, newsItem);

            if (model.ThumbnailImage != null && newsItem.ThumbnailImage != null)
            {
                await _mediaService.DeleteMediaAsync(newsItem.ThumbnailImage);
            }

            await SaveServiceMedia(model.ThumbnailImage, newsItem);
            _newsItemService.Update(newsItem);
            return Accepted();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(long id)
        {
            var newsItem = _newsItemRepository.Query().FirstOrDefault(x => x.Id == id);
            if (newsItem == null)
            {
                return NotFound();
            }

            await _newsItemService.Delete(newsItem);
            return NoContent();
        }

        private async Task<string> SaveFile(IFormFile file)
        {
            var originalFileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Value.Trim('"');
            var fileName = $"{Guid.NewGuid()}{Path.GetExtension(originalFileName)}";
            await _mediaService.SaveMediaAsync(file.OpenReadStream(), fileName, file.ContentType);
            return fileName;
        }

        private async Task SaveServiceMedia(IFormFile image, NewsItem newsItem)
        {
            if (image != null)
            {
                var fileName = await SaveFile(image);
                if (newsItem.ThumbnailImage != null)
                {
                    newsItem.ThumbnailImage.FileName = fileName;
                }
                else
                {
                    newsItem.ThumbnailImage = new Media { FileName = fileName };
                }
            }
        }

        private void AddOrDeleteCategories(NewsItemForm model, NewsItem newsItem)
        {
            foreach (var categoryId in model.NewsCategoryIds)
            {
                if (newsItem.Categories.Any(x => x.CategoryId == categoryId))
                {
                    continue;
                }

                var newsItemCategory = new NewsItemCategory
                {
                    CategoryId = categoryId
                };
                newsItem.AddNewsItemCategory(newsItemCategory);
            }

            var deletedNewsItemCategories =
                newsItem.Categories.Where(newsItemCategory => !model.NewsCategoryIds.Contains(newsItemCategory.CategoryId))
                    .ToList();

            foreach (var deletedNewsItemCategory in deletedNewsItemCategories)
            {
                deletedNewsItemCategory.NewsItem = null;
                newsItem.Categories.Remove(deletedNewsItemCategory);
            }
        }
    }
}
