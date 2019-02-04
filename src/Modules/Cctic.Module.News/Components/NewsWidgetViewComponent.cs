using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using Cctic.Infrastructure.Data;
using Cctic.Module.News.Models;
using Cctic.Module.News.Services;
using Cctic.Module.News.ViewModels;
using Cctic.Module.Core.Services;
using Cctic.Module.Core.ViewModels;

namespace Cctic.Module.News.Components
{
    public class NewsWidgetViewComponent : ViewComponent
    {
        private readonly IRepository<NewsItem> _newsItemRepository;
        private readonly IMediaService _mediaService;
    

        public NewsWidgetViewComponent(IRepository<NewsItem> newsItemRepository, IMediaService mediaService)
        {
            _newsItemRepository = newsItemRepository;
            _mediaService = mediaService;
          
        }

        public IViewComponentResult Invoke(WidgetInstanceViewModel widgetInstance)
        {
            var model = new NewsWidgetComponentVm
            {
                Id = widgetInstance.Id,
                WidgetName = widgetInstance.Name,
                Setting = JsonConvert.DeserializeObject<NewsWidgetSetting>(widgetInstance.Data)
            };

            var query = _newsItemRepository.Query()
              .Where(x => x.IsPublished);

            model.News_Items = query
              .OrderByDescending(x => x.CreatedOn)
              .Take(model.Setting.NumberOfNewsItem)
              .Select(x => NewsItemThumbnail.FromNewsItem(x)).ToList();



            return View("/Modules/Cctic.Module.News/Views/Components/NewsWidget.cshtml", model);
        }
    }
}
