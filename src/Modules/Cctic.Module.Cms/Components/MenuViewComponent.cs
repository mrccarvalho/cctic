﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Cctic.Infrastructure.Data;
using Cctic.Module.Cms.Models;   
using Cctic.Module.Cms.ViewModels;

namespace Cctic.Module.Cms.Components
{
    public class MenuViewComponent : ViewComponent
    {
        private readonly IRepository<Menu> _menuRepository;

        public MenuViewComponent(IRepository<Menu> menuRepository)
        {
            _menuRepository = menuRepository;
        }

        public async Task<IViewComponentResult> InvokeAsync(long menuId)
        {
            var menu = await _menuRepository.Query().Include(x => x.MenuItems).ThenInclude(m => m.Entity).FirstOrDefaultAsync(x => x.Id == menuId);
            if (menu == null)
            {
                throw new ArgumentException($"Cannot found menu item id {menuId}");
            }

            var menuItemVms = new List<MenuItemVm>();
            foreach (var item in menu.MenuItems.Where(x => !x.ParentId.HasValue))
            {
                var menuItemVm = Map(item);
                menuItemVms.Add(menuItemVm);
            }

            return View("/Modules/Cctic.Module.Cms/Views/Components/Menu.cshtml", menuItemVms);
        }

        private MenuItemVm Map(MenuItem menuItem)
        {
            var menuItemVm = new MenuItemVm
            {
                Id = menuItem.Id,
                Name = menuItem.Name,
                Link = menuItem.Entity == null ? menuItem.CustomLink : $"/{menuItem.Entity.Slug}"
            };

            var childItems = menuItem.Children;
            foreach (var childItem in childItems)
            {
                var childMenuItemVm = Map(childItem);
                menuItemVm.AddChildItem(childMenuItemVm);
            }

            return menuItemVm;
        }
    }
}
