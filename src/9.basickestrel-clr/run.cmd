dotnet restore
dotnet build --configuration release
copy /y .\8.basickestrel-clr.runtimeconfig.json .\bin\release\net451\win7-x64\9.basickestrel-clr.runtimeconfig.json
.\bin\release\net451\win7-x64\9.basickestrel-clr.exe
