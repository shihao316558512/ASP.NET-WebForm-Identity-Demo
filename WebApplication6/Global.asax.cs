using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApplication6
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // 在应用程序启动时运行的代码
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            // 在第一次启动网站时初始化数据库添加管理员用户凭据和admin 角色到数据库
            Database.SetInitializer(new ApplicationDbInitializer());
            ApplicationDbInitializer neizhi = new ApplicationDbInitializer();
            neizhi.InitializeIdentityForEF();
        }
    }
}