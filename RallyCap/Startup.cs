﻿using Microsoft.Owin;
using Owin;


[assembly: OwinStartupAttribute(typeof(RallyCap.Startup))]
namespace RallyCap
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            app.MapSignalR();
            ConfigureAuth(app);
           
        }
    }
}
