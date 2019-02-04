using System;
using Cctic.Module.News.Models;
using Cctic.Module.Core.Models;

namespace Cctic.Module.News.ViewModels
{
    public class NewsItemThumbnail
    {
        public long Id { get; set; }

        public string ShortContent { get; set; }
        
        public string ImageUrl { get; set; }

       public DateTimeOffset PublishedOn { get; set; }

        public string SeoTitle { get; set; }
        public string Name { get; set; }
        public string Abrev { get; set; }

        public static NewsItemThumbnail FromNewsItem(NewsItem newsitem)
        {
            var newsitemThumbnail = new NewsItemThumbnail
            {
                Id = newsitem.Id,
                SeoTitle = newsitem.SeoTitle,
                ShortContent = newsitem.ShortContent,
                PublishedOn = newsitem.CreatedOn,
                Name = newsitem.Name,
                Abrev = newsitem.Abrev


            };

            return newsitemThumbnail;
        }
    }
}
