using System.Threading.Tasks;
using Cctic.Module.News.Models;

namespace Cctic.Module.News.Services
{
    public interface INewsItemService
    {
        void Create(NewsItem newsItem);

        void Update(NewsItem newsItem);

        Task Delete(long id);

        Task Delete(NewsItem newsItem);
    }
}
