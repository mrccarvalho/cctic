using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Cctic.Module.Core.Data;
using Cctic.Module.Core.Models;

namespace Cctic.Module.Core.Extensions
{
    public class CcticUserStore : UserStore<User, Role, CcticDbContext, long, IdentityUserClaim<long>, UserRole,
        IdentityUserLogin<long>, IdentityUserToken<long>, IdentityRoleClaim<long>>

    {

        public CcticUserStore(CcticDbContext context, IdentityErrorDescriber describer) : base(context, describer)

        {

        }

    }

}