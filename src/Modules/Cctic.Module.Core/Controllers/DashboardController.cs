using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Cctic.Module.Core.Controllers
{
    [Authorize(Roles = "admin")]
    public class DashboardController : Controller
    {
        [Route("admin/dashboard-tpl")]
        public IActionResult HomeTemplate()
        {
            return View();
        }
    }
}
