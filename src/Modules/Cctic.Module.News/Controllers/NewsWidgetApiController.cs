using System.Linq;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Cctic.Infrastructure;
using Cctic.Infrastructure.Data;
using Cctic.Module.News.ViewModels;
using Cctic.Module.Core.Models;

namespace Cctic.Module.News.Controllers
{
    [Authorize(Roles = "admin")]
    [Route("api/news-widgets")]
    public class NewsWidgetApiController : Controller
    {
        private readonly IRepository<WidgetInstance> _widgetInstanceRepository;
        private readonly IRepository<Widget> _widgetRespository;

        public NewsWidgetApiController(IRepository<WidgetInstance> widgetInstanceRepository, IRepository<Widget> widgetRepository)
        {
            _widgetInstanceRepository = widgetInstanceRepository;
            _widgetRespository = widgetRepository;
        }

        [HttpGet("{id}")]
        public IActionResult Get(long id)
        {
            var widgetInstance = _widgetInstanceRepository.Query().FirstOrDefault(x => x.Id == id);
            var model = new NewsWidgetForm
            {
                Id = widgetInstance.Id,
                Name = widgetInstance.Name,
                WidgetZoneId = widgetInstance.WidgetZoneId,
                PublishStart = widgetInstance.PublishStart,
                PublishEnd = widgetInstance.PublishEnd,
                Setting = JsonConvert.DeserializeObject<NewsWidgetSetting>(widgetInstance.Data)
            };

            
            return Json(model);
        }

        [HttpPost]
        public IActionResult Post([FromBody] NewsWidgetForm model)
        {
            if (ModelState.IsValid)
            {
                var widgetInstance = new WidgetInstance
                {
                    Name = model.Name,
                    WidgetId = 5,
                    WidgetZoneId = model.WidgetZoneId,
                    PublishStart = model.PublishStart,
                    PublishEnd = model.PublishEnd,
                    Data = JsonConvert.SerializeObject(model.Setting)
                };

                _widgetInstanceRepository.Add(widgetInstance);
                _widgetInstanceRepository.SaveChanges();
                return Ok();
            }
            return new BadRequestObjectResult(ModelState);
        }

        [HttpPut("{id}")]
        public IActionResult Put(long id, [FromBody] NewsWidgetForm model)
        {
            if (ModelState.IsValid)
            {
                var widgetInstance = _widgetInstanceRepository.Query().FirstOrDefault(x => x.Id == id);
                widgetInstance.Name = model.Name;
                widgetInstance.WidgetZoneId = model.WidgetZoneId;
                widgetInstance.PublishStart = model.PublishStart;
                widgetInstance.PublishEnd = model.PublishEnd;
                widgetInstance.Data = JsonConvert.SerializeObject(model.Setting);

                _widgetInstanceRepository.SaveChanges();
                return Ok();
            }

            return new BadRequestObjectResult(ModelState);
        }

       
    }
}
