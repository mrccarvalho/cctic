using System.Threading.Tasks;

namespace Cctic.Infrastructure.Web
{
    public interface IRazorViewRenderer
    {
        Task<string> RenderViewToStringAsync<TModel>(string viewName, TModel model);
    }
}
