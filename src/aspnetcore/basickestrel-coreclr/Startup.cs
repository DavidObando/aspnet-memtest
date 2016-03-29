// Copyright (c) .NET Foundation. All rights reserved.
// Licensed under the Apache License, Version 2.0. See License.txt in the project root for license information.

using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using System;
using System.Text;
using System.Runtime;

namespace Microsoft.AspNetCore.Test.Perf.WebFx.Apps.HelloWorld
{
    public class Startup
    {
        private static readonly byte[] _helloWorldPayload = Encoding.UTF8.GetBytes("Hello, World!");

        public void Configure(IApplicationBuilder app)
        {
            app.Run(context =>
            {
                context.Response.StatusCode = 200;
                context.Response.ContentType = "text/plain";
                // HACK: Setting the Content-Length header manually avoids the cost of serializing the int to a string.
                //       This is instead of: httpContext.Response.ContentLength = _helloWorldPayload.Length;
                context.Response.Headers["Content-Length"] = "13";
                return context.Response.Body.WriteAsync(_helloWorldPayload, 0, _helloWorldPayload.Length);
            });
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
