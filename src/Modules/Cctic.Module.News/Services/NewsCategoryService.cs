﻿using System.Linq;
using System.Threading.Tasks;
using Cctic.Infrastructure.Data;
using Cctic.Module.Core.Services;
using Cctic.Module.News.Models;

namespace Cctic.Module.News.Services
{
    public class NewsCategoryService : INewsCategoryService
    {
        private const long NewsCategoryEntityTypeId = 6;

        private readonly IRepository<NewsCategory> _categoryRepository;
        private readonly IEntityService _entityService;

        public NewsCategoryService(IRepository<NewsCategory> categoryRepository, IEntityService entityService)
        {
            _categoryRepository = categoryRepository;
            _entityService = entityService;
        }

        public void Create(NewsCategory category)
        {
            using (var transaction = _categoryRepository.BeginTransaction())
            {
                category.SeoTitle = _entityService.ToSafeSlug(category.SeoTitle, category.Id, NewsCategoryEntityTypeId);
                _categoryRepository.Add(category);
                _categoryRepository.SaveChanges();

                _entityService.Add(category.Name, category.SeoTitle, category.Id, NewsCategoryEntityTypeId);
                _categoryRepository.SaveChanges();

                transaction.Commit();
            }
        }

        public void Update(NewsCategory category)
        {
            category.SeoTitle = _entityService.ToSafeSlug(category.SeoTitle, category.Id, NewsCategoryEntityTypeId);
            _entityService.Update(category.Name, category.SeoTitle, category.Id, NewsCategoryEntityTypeId);
            _categoryRepository.SaveChanges();
        }

        public async Task Delete(long id)
        {
            var category = _categoryRepository.Query().First(x => x.Id == id);
            await Delete(category);
        }

        public async Task Delete(NewsCategory category)
        {
            category.IsDeleted = true;
            await _entityService.Remove(category.Id, NewsCategoryEntityTypeId);
            _categoryRepository.SaveChanges();
        }
    }
}
