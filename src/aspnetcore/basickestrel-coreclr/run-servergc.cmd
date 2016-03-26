dotnet restore
dotnet build --configuration release
copy /y .\servergc.json .\bin\release\netstandardapp1.5\win7-x64\basickestrel-coreclr.runtimeconfig.json
.\bin\release\netstandardapp1.5\win7-x64\basickestrel-coreclr.exe
