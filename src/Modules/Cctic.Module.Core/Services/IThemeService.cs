using System.Collections.Generic;
using Cctic.Module.Core.ViewModels;

namespace Cctic.Module.Core.Services
{
    public interface IThemeService
    {
        IList<ThemeListItem> GetInstalledThemes();

        void SetCurrentTheme(string themeName);
    }
}
