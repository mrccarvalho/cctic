using Cctic.Module.Core.Models;

namespace Cctic.Module.Cms.ViewModels
{
    public class PageWithBreadCrumb : Content
    {
        public long CategoryId { get; set; }

        public long? ParentCategoryId { get; set; }

        public string CategoryName { get; set; }

        public string CategorySeoTitle { get; set; }

        public string Body { get; set; }

       
    }
}
