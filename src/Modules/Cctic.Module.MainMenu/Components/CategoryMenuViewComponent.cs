using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Cctic.Infrastructure.Data;
using Cctic.Module.MainMenu.Models;
using Cctic.Module.MainMenu.ViewModels;

namespace Cctic.Module.MainMenu.Components
{
    public class CategoryMenuViewComponent : ViewComponent
    {
        private readonly IRepository<Category> _categoryRepository;

        public CategoryMenuViewComponent(IRepository<Category> categoryRepository)
        {
            _categoryRepository = categoryRepository;
        }

        public IViewComponentResult Invoke()
        {
            var categories = _categoryRepository.Query().Where(x => !x.IsDeleted && x.IncludeInMenu).ToList();

            var categoryMenuItems = new List<CategoryMenuItem>();
            var topCategories = categories.Where(x => !x.ParentId.HasValue).OrderByDescending(x => x.DisplayOrder);
            foreach (var category in topCategories)
            {
                var categoryMenuItem = Map(category);
                categoryMenuItems.Add(categoryMenuItem);
            }

            return View("/Modules/Cctic.Module.MainMenu/Views/Components/CategoryMenu.cshtml", categoryMenuItems);
        }

        private CategoryMenuItem Map(Category category)
        {
            var categoryMenuItem = new CategoryMenuItem
            {
                Id = category.Id,
                Name = category.Name,
                SeoTitle = category.SeoTitle
            };

            var childCategories = category.Children;
            foreach (var childCategory in childCategories.OrderByDescending(x => x.DisplayOrder))
            {
                var childCategoryMenuItem = Map(childCategory);
                categoryMenuItem.AddChildItem(childCategoryMenuItem);
            }

            return categoryMenuItem;
        }
    }
}
