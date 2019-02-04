using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Cctic.Module.Cms.ViewModels;
using Cctic.Module.Core.Services;
using Cctic.Module.Core.ViewModels;

namespace Cctic.Module.Cms.Components
{

    public class CarouselWidgetViewComponent : ViewComponent
    {
        private IMediaService _mediaService;

        public CarouselWidgetViewComponent(IMediaService mediaService)
        {
            _mediaService = mediaService;
        }

        public IViewComponentResult Invoke(WidgetInstanceViewModel widgetInstance)
        {
            var model = new CarouselWidgetViewComponentVm
            {
                Id = widgetInstance.Id,
                Items = JsonConvert.DeserializeObject<IList<CarouselWidgetViewComponentItemVm>>(widgetInstance.Data)
            };

            foreach (var item in model.Items)
            {
                item.Image = _mediaService.GetMediaUrl(item.Image);
            }

            return View("/Modules/Cctic.Module.Cms/Views/Components/CarouselWidget.cshtml", model);
        }
    }
   
}
