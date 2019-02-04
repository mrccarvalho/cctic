using System.Threading.Tasks;

namespace Cctic.Module.Core.Services
{
    public interface ISmsSender
    {
        Task SendSmsAsync(string number, string message);
    }
}