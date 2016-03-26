dotnet restore
dotnet build --configuration release
copy /y .\workstationgc.config .\bin\release\net451\win7-x64\mvc-clr.config
.\bin\release\net451\win7-x64\mvc-clr.exe
