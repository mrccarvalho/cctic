using System.Threading.Tasks;

namespace Cctic.Module.Core.Services
{
    public interface IEmailSender
    {
        Task SendEmailAsync(string email, string subject, string message, bool isHtml = false);
    }
}