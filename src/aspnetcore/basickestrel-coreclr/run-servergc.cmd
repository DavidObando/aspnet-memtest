set COREHOST_SERVER_GC=1
dotnet restore --infer-runtimes
dotnet build --configuration release
copy /y .\servergc.json .\bin\release\netcoreapp1.0\win7-x64\basickestrel-coreclr.runtimeconfig.json
.\bin\release\netcoreapp1.0\win7-x64\basickestrel-coreclr.exe
