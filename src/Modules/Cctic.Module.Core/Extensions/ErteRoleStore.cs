using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Cctic.Module.Core.Data;
using Cctic.Module.Core.Models;

namespace Cctic.Module.Core.Extensions
{
    public class CcticRoleStore: RoleStore<Role, CcticDbContext, long, UserRole, IdentityRoleClaim<long>>
    {
        public CcticRoleStore(CcticDbContext context) : base(context)
        {
        }
    }
}
