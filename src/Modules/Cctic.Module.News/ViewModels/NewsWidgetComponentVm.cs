using System.Collections.Generic;

namespace Cctic.Module.News.ViewModels
{
    public class NewsWidgetComponentVm
    {
        public long Id { get; set; }

        public string WidgetName { get; set; }

        public NewsWidgetSetting Setting { get; set; }

        public IList<NewsItemThumbnail> News_Items { get; set; }
    }
}
