using System.Collections.Generic;
using Cctic.Module.Core.ViewModels;

namespace Cctic.Module.Cms.ViewModels
{
    public class CarouselWidgetForm : WidgetFormBase
    {
        public IList<CarouselWidgetItemForm> Items = new List<CarouselWidgetItemForm>();
    }
}
