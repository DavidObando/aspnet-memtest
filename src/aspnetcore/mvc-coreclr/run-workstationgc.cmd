set COREHOST_SERVER_GC=0
dotnet restore --infer-runtimes
dotnet build --configuration release
copy /y .\workstationgc.json .\bin\release\netcoreapp1.0\win7-x64\mvc-coreclr.runtimeconfig.json
.\bin\release\netcoreapp1.0\win7-x64\mvc-coreclr.exe
