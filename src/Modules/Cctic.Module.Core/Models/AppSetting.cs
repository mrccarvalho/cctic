using Cctic.Infrastructure.Models;

namespace Cctic.Module.Core.Models
{
    public class AppSetting : EntityBase
    {
        public string Key { get; set; }

        public string Value { get; set; }
    }
}
