using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Cctic.Infrastructure.Data;
using Cctic.Module.MainMenu.Models;
using Cctic.Module.MainMenu.Services;
using Cctic.Module.MainMenu.ViewModels;
using Cctic.Module.Core.Services;
using Microsoft.Extensions.Configuration;

namespace Cctic.Module.MainMenu.Controllers
{
    public class CategoryController : Controller
    {
       
        private readonly IRepository<Category> _categoryRepository;


        public CategoryController(IRepository<Category> categoryRepository, IConfiguration config)
        {
            
            _categoryRepository = categoryRepository;
        
        }

       

       

      
    }
}
