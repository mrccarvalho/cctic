using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore.Storage;
using Cctic.Infrastructure.Models;

namespace Cctic.Infrastructure.Data
{
    public interface IRepositoryWithTypedId<T, in TId> where T : IEntityWithTypedId<TId>
    {
        IQueryable<T> Query();

        void Add(T entity);

        IDbContextTransaction BeginTransaction();

        void SaveChanges();

        Task SaveChangesAsync();

        void Remove(T entity);
    }
}
