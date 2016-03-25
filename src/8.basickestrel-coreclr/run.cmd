dotnet restore
dotnet build --configuration release
copy /y .\8.basickestrel-coreclr.runtimeconfig.json .\bin\release\netstandardapp1.5\win7-x64\8.basickestrel-coreclr.runtimeconfig.json
.\bin\release\netstandardapp1.5\win7-x64\8.basickestrel-coreclr.exe
