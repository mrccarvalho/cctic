using Microsoft.Extensions.DependencyInjection;

namespace Cctic.Infrastructure
{
    public interface IModuleInitializer
    {
        void Init(IServiceCollection serviceCollection);
    }
}
