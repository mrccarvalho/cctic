using System.Threading.Tasks;
using Cctic.Module.News.Models;

namespace Cctic.Module.News.Services
{
    public interface INewsCategoryService
    {
        void Create(NewsCategory category);

        void Update(NewsCategory category);

        Task Delete(long id);

        Task Delete(NewsCategory category);
    }
}
