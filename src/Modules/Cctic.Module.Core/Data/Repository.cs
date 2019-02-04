using Cctic.Infrastructure.Data;
using Cctic.Infrastructure.Models;

namespace Cctic.Module.Core.Data
{
    public class Repository<T> : RepositoryWithTypedId<T, long>, IRepository<T>
       where T : class, IEntityWithTypedId<long>
    {
        public Repository(CcticDbContext context) : base(context)
        {
        }
    }
}
