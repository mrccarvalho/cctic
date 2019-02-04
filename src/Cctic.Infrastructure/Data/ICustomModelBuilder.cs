using Microsoft.EntityFrameworkCore;

namespace Cctic.Infrastructure.Data
{
    public interface ICustomModelBuilder
    {
        void Build(ModelBuilder modelBuilder);
    }
}
