using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Cctic.Infrastructure.Data;
using Cctic.Module.Core.Models;
using Microsoft.AspNetCore.Authorization;

namespace Cctic.Module.Core.Controllers
{
    [Authorize(Roles = "admin")]
    [Route("api/roles")]
    public class RoleApiController : Controller
    {
        private readonly IRepository<Role> _roleRepository;

        public RoleApiController(IRepository<Role> roleRepository)
        {
            _roleRepository = roleRepository;
        }

        public IActionResult Get()
        {
            var roles = _roleRepository.Query().Select(x => new
            {
                Id = x.Id,
                Name = x.Name
            });

            return Json(roles);
        }
    }
}
