using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using Cctic.Infrastructure.Data;
using Cctic.Module.MainMenu.Models;
using Cctic.Module.MainMenu.ViewModels;
using Cctic.Module.Core.Services;
using Cctic.Module.Core.ViewModels;

namespace Cctic.Module.MainMenu.Components
{
    public class CategoryWidgetViewComponent : ViewComponent
    {
        private readonly IRepository<Category> _categoriesRepository;


        public CategoryWidgetViewComponent(IRepository<Category> categoriesRepository)
        {
            _categoriesRepository = categoriesRepository;
          
        }

        public IViewComponentResult Invoke(WidgetInstanceViewModel widgetInstance)
        {
            var model = new CategoryWidgetComponentVm() {
                Id = widgetInstance.Id,
                WidgetName = widgetInstance.Name,
            };
            var settings = JsonConvert.DeserializeObject<CategoryWidgetSettings>(widgetInstance.Data);
            if (settings != null)
            {
                var category = _categoriesRepository.Query()
                    .FirstOrDefault(c => c.Id == settings.CategoryId);
               
            }

            return View("/Modules/Cctic.Module.MainMenu/Views/Components/CategoryWidget.cshtml", model);
        }
    }
}
