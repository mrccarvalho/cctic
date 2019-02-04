using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Cctic.Module.Core.Services;
using Cctic.Module.Core.ViewModels;

namespace Cctic.Module.Core.Controllers
{
    [Authorize(Roles = "admin")]
    [Route("api/themes")]
    public class ThemeApiController : Controller
    {
        private readonly IThemeService _themeService;

        public ThemeApiController(IThemeService themeService)
        {
            _themeService = themeService;
        }

        public IActionResult Get()
        {
            var themes = _themeService.GetInstalledThemes();
            return Json(themes);
        }

        [HttpPost("use-theme")]
        public IActionResult Post([FromBody] ThemeListItem model)
        {
            if (ModelState.IsValid)
            {
                _themeService.SetCurrentTheme(model.Name);

                return Ok();
            }
            return new BadRequestObjectResult(ModelState);
        }
    }
}
