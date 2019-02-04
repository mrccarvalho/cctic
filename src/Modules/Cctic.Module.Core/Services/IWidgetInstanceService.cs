using System.Linq;
using Cctic.Module.Core.Models;

namespace Cctic.Module.Core.Services
{
    public interface IWidgetInstanceService
    {
        IQueryable<WidgetInstance> GetPublished();
    }
}
