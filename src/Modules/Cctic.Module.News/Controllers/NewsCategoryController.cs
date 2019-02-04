﻿using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Cctic.Infrastructure.Data;
using Cctic.Module.Core.Services;
using Cctic.Module.News.Models;
using Cctic.Module.News.ViewModels;

namespace Cctic.Module.News.Controllers
{
    public class NewsCategoryController : Controller
    {
        private int _pageSize;
        private readonly IRepository<NewsItem> _newsItemRepository;
        private readonly IMediaService _mediaService;
        private readonly IRepository<NewsCategory> _newsCategoryRepository;

        public NewsCategoryController(IRepository<NewsItem> newsItemRepository,
            IMediaService mediaService, IRepository<NewsCategory> newsCategoryRepository,
            IConfiguration config)
        {
            _newsItemRepository = newsItemRepository;
            _mediaService = mediaService;
            _newsCategoryRepository = newsCategoryRepository;
            _pageSize = config.GetValue<int>("News.PageSize");
        }

        public IActionResult NewsCategoryDetail(long id, int page)
        {
            var newsCategoryList = _newsCategoryRepository.Query()
                .Include(x => x.NewsItems)
                .Where(x => !x.IsDeleted)
                .Select(x => new NewsCategoryVm()
                {
                    Id = x.Id,
                    Name = x.Name,
                    SeoTitle = x.SeoTitle
                })
                .ToList();

            if (newsCategoryList == null)
            {
                return Redirect("~/Error/FindNotFound");
            }

            var currentNewsCategory = newsCategoryList.Select(x => new NewsCategoryVm()
            {
                Id = x.Id,
                Name = x.Name,
                SeoTitle = x.SeoTitle
            })
            .FirstOrDefault(x => x.Id == id);

            var model = new NewsVm()
            {
                CurrentNewsCategory = currentNewsCategory,
                NewsCategory = newsCategoryList
            };

            var query = _newsItemRepository.Query()
                .Where(x => x.Categories.Any(c => c.CategoryId == currentNewsCategory.Id) && !x.IsDeleted && x.IsPublished)
                .OrderByDescending(x => x.CreatedOn);

            model.TotalItem = query.Count();
            var currentPageNum = page <= 0 ? 1 : page;
            var offset = (_pageSize * currentPageNum) - _pageSize;
            while (currentPageNum > 1 && offset >= model.TotalItem)
            {
                currentPageNum--;
                offset = (_pageSize * currentPageNum) - _pageSize;
            }

            model.NewsItem = query.Include(x => x.ThumbnailImage).Select( x => new NewsItemThumbnail()
            {
                Id = x.Id,
                ShortContent = x.ShortContent,
                ImageUrl = _mediaService.GetMediaUrl(x.ThumbnailImage),
                PublishedOn = x.CreatedOn,
                SeoTitle = x.SeoTitle
            })
            .Skip(offset)
            .Take(_pageSize)
            .ToList();

            model.PageSize = _pageSize;
            model.Page = currentPageNum;
            return View(model);
        }
    }
}
