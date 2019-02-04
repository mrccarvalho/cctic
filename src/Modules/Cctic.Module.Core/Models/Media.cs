using Cctic.Infrastructure.Models;

namespace Cctic.Module.Core.Models
{
    public class Media : EntityBase
    {
        public string Caption { get; set; }

        public int FileSize { get; set; }

        public string FileName { get; set; }

        public MediaType MediaType { get; set; }
    }
}
