// Copyright (c) .NET Foundation. All rights reserved.
// Licensed under the Apache License, Version 2.0. See License.txt in the project root for license information.

using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Runtime;

namespace HelloWorldMvc
{
    public class Startup
    {
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc();
        }

        public void Configure(IApplicationBuilder app)
        {
            app.UseMvcWithDefaultRoute();
        }

        public static void Main(string[] args)
        {
            if(GCSettings.IsServerGC)
            {
                Console.WriteLine("Using ServerGc");
            }
            else
            {
                Console.WriteLine("Using WorkstationGc");
            }
            var host = new WebHostBuilder()
                .UseServer("Microsoft.AspNetCore.Server.Kestrel")
                .UseDefaultHostingConfiguration(args)
                .UseIISPlatformHandlerUrl()
                .UseStartup<Startup>()
                .Build();

            host.Run();
        }
    }
}
