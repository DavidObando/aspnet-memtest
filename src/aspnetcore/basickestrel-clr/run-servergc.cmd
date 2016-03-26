dotnet restore
dotnet build --configuration release
copy /y .\servergc.config .\bin\release\net451\win7-x64\basickestrel-clr.config
.\bin\release\net451\win7-x64\basickestrel-clr.exe
