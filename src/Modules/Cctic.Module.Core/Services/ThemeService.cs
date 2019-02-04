using System;
using System.Linq;
using System.IO;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using Cctic.Infrastructure;
using System.Collections.Generic;
using Cctic.Module.Core.Models;
using Cctic.Module.Core.ViewModels;
using Cctic.Infrastructure.Data;

namespace Cctic.Module.Core.Services
{
    public class ThemeService : IThemeService
    {
        private readonly IConfigurationRoot _configurationRoot;
        private readonly IRepository<AppSetting> _appSettingRepository;
        private string _currentThemeName;

        public ThemeService(IConfiguration configuration, IRepository<AppSetting> appSettingRepository)
        {
            _configurationRoot = (IConfigurationRoot)configuration;
            _appSettingRepository = appSettingRepository;
            _currentThemeName = configuration[CcticConstants.ThemeConfigKey];
        }

        public IList<ThemeListItem> GetInstalledThemes()
        {
            IList<ThemeListItem> themes = new List<ThemeListItem>
            {
                new ThemeListItem
                {
                    Name = "Generic",
                    DisplayName = "Generic",
                    IsCurrent = "Generic" == _currentThemeName,
                    ThumbnailUrl = "/themes/generic-theme.png"
                }
            };

            var themeRootFolder = new DirectoryInfo(Path.Combine(GlobalConfiguration.ContentRootPath, "Themes"));
            var themeFolders = themeRootFolder.GetDirectories();

            foreach (var themeFolder in themeFolders)
            {
                var themeJsonPath = Path.Combine(themeFolder.FullName, "theme.json");
                if (!File.Exists(themeJsonPath))
                {
                    throw new ApplicationException($"Cannot found theme.json for theme {themeFolder.Name}");
                }

                var manifestStr = File.ReadAllText(themeJsonPath);
                ThemeManifest themeManifest;
                themeManifest = JsonConvert.DeserializeObject<ThemeManifest>(manifestStr);
                var theme = new ThemeListItem
                {
                    Name = themeManifest.Name,
                    DisplayName = themeManifest.DisplayName,
                    IsCurrent = themeManifest.Name == _currentThemeName,
                    ThumbnailUrl = $"/themes/{themeManifest.Name}/{themeManifest.Name}.png"
                };

                themes.Add(theme);
            }

            return themes;
        }

        public void SetCurrentTheme(string themeName)
        {
            var themeSetting = _appSettingRepository.Query().Where(x => x.Key == CcticConstants.ThemeConfigKey).First();
            themeSetting.Value = themeName;
            _appSettingRepository.SaveChanges();
            _configurationRoot.Reload();
        }
    }
}
