dotnet restore --infer-runtimes
dotnet build --configuration release
copy /y .\servergc.config .\bin\release\net451\win7-x64\mvc-clr.config
.\bin\release\net451\win7-x64\mvc-clr.exe
