set COREHOST_SERVER_GC=0
dotnet restore
dotnet build --configuration release
copy /y .\workstationgc.json .\bin\release\netstandardapp1.5\win7-x64\mvc-coreclr.runtimeconfig.json
.\bin\release\netstandardapp1.5\win7-x64\mvc-coreclr.exe
