using System;
using System.Runtime;
using System.Web.Mvc;
using System.Web.Routing;

namespace mvc5_clr
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            if (GCSettings.IsServerGC)
            {
                Console.WriteLine("Using ServerGc");
            }
            else
            {
                Console.WriteLine("Using WorkstationGc");
            }
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
        }
    }
}
