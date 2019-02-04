using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Identity;
using Cctic.Infrastructure.Models;

namespace Cctic.Module.Core.Models
{
    public class User : IdentityUser<long>, IEntityWithTypedId<long>
    {
        public User()
        {
            CreatedOn = DateTimeOffset.Now;
            UpdatedOn = DateTimeOffset.Now;
        }

        public Guid UserGuid { get; set; }

        public string FullName { get; set; }

        public bool IsDeleted { get; set; }

        public DateTimeOffset CreatedOn { get; set; }

        public DateTimeOffset UpdatedOn { get; set; }

        public IList<UserRole> Roles { get; set; } = new List<UserRole>();

       

    }
}
