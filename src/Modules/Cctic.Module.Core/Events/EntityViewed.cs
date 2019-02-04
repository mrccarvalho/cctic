using MediatR;

namespace Cctic.Module.Core.Events
{
    public class EntityViewed : INotification
    {
        public long EntityId { get; set; }

        public long EntityTypeId { get; set; }
    }
}
