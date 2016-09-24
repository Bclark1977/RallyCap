using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RallyCap.Startup))]
namespace RallyCap
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);

            //app.UseFacebookAuthentication(
            //    appId: "1077021485712804",
            //    appSecret: "29a866df2cceec36069c5c2193a07315");
                
        }
    }

}
