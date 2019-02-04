using System.Threading.Tasks;
using Cctic.Module.Cms.Models;

namespace Cctic.Module.Cms.Services
{
    public interface IPageService
    {
        void Create(Page page);

        void Update(Page page);

        Task Delete(Page page);
    }
}
