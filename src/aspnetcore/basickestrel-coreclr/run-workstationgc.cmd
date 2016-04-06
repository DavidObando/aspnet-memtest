set COREHOST_SERVER_GC=0
dotnet restore --infer-runtimes
dotnet build --configuration release
copy /y .\workstationgc.json .\bin\release\netcoreapp1.0\win7-x64\basickestrel-coreclr.runtimeconfig.json
.\bin\release\netcoreapp1.0\win7-x64\basickestrel-coreclr.exe server.urls=http://0.0.0.0:5000
