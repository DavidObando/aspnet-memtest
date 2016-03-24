# aspnet-memtest
Basic memory consumption comparisons to benchmark ASP.NET Core against other platforms. By platforms, we mean the likes of Java and Node.js. Nothing stops these tests from being run in Linux or OSX, but their main target is to measure their behavior in Windows.

# How to run
Within `src` you'll find a list of tests. Each test contains a `run.cmd` command file that compiles the project and runs it. You'll also find a `loadtest.ps1` PowerShell script that throws some load to the running service.

# How to measure
Use [vmmap](https://technet.microsoft.com/en-us/sysinternals/vmmap.aspx) to see the state of the process' memory before and after throwing load to it. One can also attach a [Visual Studio debugger](https://blogs.msdn.microsoft.com/visualstudioalm/2014/11/13/memory-usage-tool-while-debugging-in-visual-studio-2015/) and take memory snapshots at different points to get a delta of the memory being utilized.
