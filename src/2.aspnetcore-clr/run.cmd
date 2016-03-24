dotnet restore
dotnet build --configuration release
copy /y .\2.aspnetcore-clr.config .\bin\release\net451\win7-x64\2.aspnetcore-clr.config
.\bin\release\net451\win7-x64\2.aspnetcore-clr.exe
