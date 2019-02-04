﻿using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Cctic.Infrastructure.Models;

namespace Cctic.Module.News.Models
{
    public class NewsCategory : EntityBase
    {
        public string Name { get; set; }

        public string SeoTitle { get; set; }

        [StringLength(5000)]
        public string Description { get; set; }

        public int DisplayOrder { get; set; }

        public bool IsPublished { get; set; }

        public bool IsDeleted { get; set; }

        public IList<NewsItemCategory> NewsItems { get; set; } = new List<NewsItemCategory>();
    }
}
