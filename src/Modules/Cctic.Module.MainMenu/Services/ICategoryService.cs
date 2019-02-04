using System.Collections.Generic;
using Cctic.Module.MainMenu.Models;
using Cctic.Module.MainMenu.ViewModels;

namespace Cctic.Module.MainMenu.Services
{
    public interface ICategoryService
    {
        IList<CategoryListItem> GetAll();

        void Create(Category category);

        void Update(Category category);

        void Delete(Category category);
    }
}
