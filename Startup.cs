using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BNS.Startup))]
namespace BNS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
