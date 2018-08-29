using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(surveyjs_webforms.Startup))]
namespace surveyjs_webforms
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
