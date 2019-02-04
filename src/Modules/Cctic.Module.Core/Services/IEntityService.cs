﻿using Cctic.Module.Core.Models;
using System.Threading.Tasks;

namespace Cctic.Module.Core.Services
{
    public interface IEntityService
    {
        string ToSafeSlug(string slug, long entityId, long entityTypeId);
        string ToSafeSlug2(string slug, long entityId, long entityTypeId);

        Entity Get(long entityId, long entityTypeId);

        void Add(string name, string slug, long entityId, long entityTypeId);

        void Update(string newName, string newSlug, long entityId, long entityTypeId);

        Task Remove(long entityId, long entityTypeId);
    }
}
