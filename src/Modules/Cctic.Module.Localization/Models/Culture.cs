using System.Collections.Generic;
using Cctic.Infrastructure.Models;

namespace Cctic.Module.Localization.Models
{
    public class Culture : EntityBase
    {
        public string Name { get; set; }

        public IList<Resource> Resources { get; set; }
    }
}
