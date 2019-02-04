using System.Threading.Tasks;
using Cctic.Module.Core.Models;

namespace Cctic.Module.Core.Extensions
{
    public interface IWorkContext
    {
        Task<User> GetCurrentUser();
    }
}
