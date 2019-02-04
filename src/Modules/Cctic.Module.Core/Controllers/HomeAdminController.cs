using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Cctic.Module.Core.Controllers
{
    [Authorize(Roles = "admin")]
    public class HomeAdminController : Controller
    {
        [Route("admin")]
        public IActionResult Index()
        {
            return View();
        }
    }
}
