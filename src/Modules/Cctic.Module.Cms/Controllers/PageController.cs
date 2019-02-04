using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Cctic.Infrastructure.Data;
using Cctic.Module.Cms.Models;
using Cctic.Module.Cms.ViewModels;
using Cctic.Module.MainMenu.Models;

namespace Cctic.Module.Cms.Controllers
{
    public class PageController : Controller
    {
        private readonly IRepository<Page> _pageRepository;
        private readonly IRepository<Category> _categoryRepository;

        public PageController(IRepository<Page> pageRepository, IRepository<Category> categoryRepository)
        {
            _categoryRepository = categoryRepository;
            _pageRepository = pageRepository;
        }

        public IActionResult PageDetail(long id, long categoryId)
        {

            var category = _categoryRepository.Query().FirstOrDefault(x => x.Id == 17);
            //if (category == null)
            //{
              //  return Redirect("~/Error/FindNotFound");
            //}
            var page = _pageRepository.Query().FirstOrDefault(x => x.Id == id);

            var model = new PageWithBreadCrumb
            {
                CategoryId = category.Id,
                ParentCategoryId = category.ParentId,
                CategoryName = category.Name,
                CategorySeoTitle = category.SeoTitle,
                Name = page.Name,
                Body = page.Body
            };
           

           

            return View(model);
        }
    }
}
