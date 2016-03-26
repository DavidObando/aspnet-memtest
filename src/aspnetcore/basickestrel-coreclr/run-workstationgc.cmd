dotnet restore
dotnet build --configuration release
copy /y .\workstationgc.json .\bin\release\netstandardapp1.5\win7-x64\basickestrel-coreclr.runtimeconfig.json
.\bin\release\netstandardapp1.5\win7-x64\basickestrel-coreclr.exe
