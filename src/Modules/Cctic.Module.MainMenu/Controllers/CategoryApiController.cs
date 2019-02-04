using System;
using System.IO;
using System.Linq;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Net.Http.Headers;
using Cctic.Infrastructure;
using Cctic.Infrastructure.Data;
using Cctic.Module.MainMenu.Models;
using Cctic.Module.MainMenu.Services;
using Cctic.Module.MainMenu.ViewModels;
using Cctic.Module.Core.Services;
using Cctic.Module.Core.Models;


namespace Cctic.Module.MainMenu.Controllers
{
    [Authorize(Roles = "admin")]
    [Route("api/categories")]
    public class CategoryApiController : Controller
    {
        private readonly IRepository<Category> _categoryRepository;
        private readonly ICategoryService _categoryService;
        

        public CategoryApiController(IRepository<Category> categoryRepository, ICategoryService categoryService)
        {
            _categoryRepository = categoryRepository;
            _categoryService = categoryService;

        }

        public IActionResult Get()
        {
            var gridData = _categoryService.GetAll();
            return Json(gridData);
        }

        [HttpGet("{id}")]
        public IActionResult Get(long id)
        {
            var category = _categoryRepository.Query().FirstOrDefault(x => x.Id == id);
            var model = new CategoryForm
            {
                Id = category.Id,
                Name = category.Name,
                DisplayOrder = category.DisplayOrder,
                Description = category.Description,
                Slug = category.SeoTitle,
                ParentId = category.ParentId,
                IncludeInMenu = category.IncludeInMenu,
                IsPublished = category.IsPublished,
               
            };

            return Json(model);
        }

        [HttpPost]
        [Authorize(Roles = "admin")]
        public IActionResult Post(CategoryForm model)
        {
            if (ModelState.IsValid)
            {
                var category = new Category
                {
                    Name = model.Name,
                    SeoTitle = model.Name.ToUrlFriendly(),
                    DisplayOrder = model.DisplayOrder,
                    Description = model.Description,
                    ParentId = model.ParentId,
                    IncludeInMenu = model.IncludeInMenu,
                    IsPublished = model.IsPublished
                };

                

                _categoryService.Create(category);

                return Ok();
            }
            return new BadRequestObjectResult(ModelState);
        }

        [HttpPut("{id}")]
        [Authorize(Roles = "admin")]
        public IActionResult Put(long id, CategoryForm model)
        {
            if (ModelState.IsValid)
            {
                var category = _categoryRepository.Query().FirstOrDefault(x => x.Id == id);
                category.Name = model.Name;
                category.SeoTitle = model.Name.ToUrlFriendly();
                category.Description = model.Description;
                category.DisplayOrder = model.DisplayOrder;
                category.ParentId = model.ParentId;
                category.IncludeInMenu = model.IncludeInMenu;
                category.IsPublished = model.IsPublished;

               

                _categoryService.Update(category);

                return Ok();
            }

            return new BadRequestObjectResult(ModelState);
        }

        [HttpDelete("{id}")]
        [Authorize(Roles = "admin")]
        public IActionResult Delete(long id)
        {
            var category = _categoryRepository.Query().Include(x => x.Children).FirstOrDefault(x => x.Id == id);
            if (category == null)
            {
                return new NotFoundResult();
            }

            if (category.Children.Any(x => !x.IsDeleted))
            {
                return BadRequest(new { Error = "Please make sure this category contains no children" });
            }

            _categoryService.Delete(category);

            return Ok();
        }

       
      
    }
}
