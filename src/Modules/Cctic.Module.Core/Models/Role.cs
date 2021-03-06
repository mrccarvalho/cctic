﻿using Microsoft.AspNetCore.Identity;
using Cctic.Infrastructure.Models;
using System.Collections.Generic;

namespace Cctic.Module.Core.Models
{
    public class Role : IdentityRole<long>, IEntityWithTypedId<long>
    {
        public IList<UserRole> Users { get; set; } = new List<UserRole>();
    }
}

