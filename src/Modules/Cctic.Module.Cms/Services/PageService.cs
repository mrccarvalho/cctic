using System.Threading.Tasks;
using Cctic.Infrastructure.Data;
using Cctic.Module.Cms.Models;
using Cctic.Module.Core.Services;

namespace Cctic.Module.Cms.Services
{
    public class PageService : IPageService
    {
        public const long PageEntityTypeId = 4;

        private readonly IRepository<Page> _pageRepository;
        private readonly IEntityService _entityService;

        public PageService(IRepository<Page> pageRepository, IEntityService entityService)
        {
            _pageRepository = pageRepository;
            _entityService = entityService;
        }

        public void Create(Page page)
        {
            using (var transaction = _pageRepository.BeginTransaction())
            {
                page.SeoTitle = page.SeoTitle;
                _pageRepository.Add(page);
                _pageRepository.SaveChanges();

                _entityService.Add(page.Name, page.SeoTitle, page.Id, PageEntityTypeId);
                _pageRepository.SaveChanges();

                transaction.Commit();
            }
        }

        public void Update(Page page)
        {
            page.SeoTitle = page.SeoTitle;
            _entityService.Update(page.Name, page.SeoTitle, page.Id, PageEntityTypeId);
            _pageRepository.SaveChanges();
        }

        public async Task Delete(Page page)
        {
            _pageRepository.Remove(page);
            await _entityService.Remove(page.Id, PageEntityTypeId);
            _pageRepository.SaveChanges();
        }
    }
}
