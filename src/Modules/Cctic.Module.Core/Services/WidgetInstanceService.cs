using System;
using System.Linq;
using Cctic.Infrastructure.Data;
using Cctic.Module.Core.Models;

namespace Cctic.Module.Core.Services
{
    public class WidgetInstanceService : IWidgetInstanceService
    {
        private IRepository<WidgetInstance> _widgetInstanceRepository;

        public WidgetInstanceService(IRepository<WidgetInstance> widgetInstanceRepository)
        {
            _widgetInstanceRepository = widgetInstanceRepository;
        }

        public IQueryable<WidgetInstance> GetPublished()
        {
            return _widgetInstanceRepository.Query().Where(x =>
                x.PublishStart.HasValue && x.PublishStart.Value < DateTimeOffset.Now
                && (!x.PublishEnd.HasValue || x.PublishEnd.Value > DateTimeOffset.Now));
        }
    }
}
