using Cctic.Infrastructure.Models;

namespace Cctic.Module.Core.Models
{
    public class Entity : EntityBase
    {
        public string Slug { get; set; }

        public string Name { get; set; }

        public long EntityId { get; set; }

        public long EntityTypeId { get; set; }

        public EntityType EntityType { get; set; }
    }
}
