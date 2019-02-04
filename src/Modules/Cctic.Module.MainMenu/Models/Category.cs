using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Cctic.Infrastructure.Models;
using Cctic.Module.Core.Models;

namespace Cctic.Module.MainMenu.Models
{
    public class Category : EntityBase
    {
        public string Name { get; set; }

        public string SeoTitle { get; set; }

        [StringLength(5000)]
        public string Description { get; set; }

        public int DisplayOrder { get; set; }

        public bool IsPublished { get; set; }

        public bool IncludeInMenu { get; set; }

        public bool IsDeleted { get; set; }

        public long? ParentId { get; set; }

        public Category Parent { get; set; }

        public IList<Category> Children { get; protected set; } = new List<Category>();

     
    }
}
