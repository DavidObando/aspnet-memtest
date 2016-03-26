dotnet restore
dotnet build --configuration release
copy /y .\9.basickestrel-clr.config .\bin\release\net451\win7-x64\9.basickestrel-clr.config
.\bin\release\net451\win7-x64\9.basickestrel-clr.exe
