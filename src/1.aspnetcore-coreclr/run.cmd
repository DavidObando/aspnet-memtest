dotnet restore
dotnet build --configuration release
copy /y .\1.aspnetcore-coreclr.runtimeconfig.json .\bin\release\netstandardapp1.5\win7-x64\1.aspnetcore-coreclr.runtimeconfig.json
.\bin\release\netstandardapp1.5\win7-x64\1.aspnetcore-coreclr.exe
