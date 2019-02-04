using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Cctic.Module.News.ViewModels
{
    public class NewsItemVm
    {
        public NewsItemVm()
        {
            IsPublished = true;
        }

        public long Id { get; set; }

        [Required]
        public string Name { get; set; }

        [Required]
        public string Abrev { get; set; }

        [Required]
        public string SeoTitle { get; set; }

        [Required]
        public string ShortContent { get; set; }

        [Required]
        public string FullContent { get; set; }

        public bool IsPublished { get; set; }

          public DateTimeOffset PublishedOn { get; set; }


        public DateTimeOffset CreatedOn { get; set; }

        public string ThumbnailImageUrl { get; set; }

        public IList<long> NewsCategoryIds { get; set; } = new List<long>();
    }
}
