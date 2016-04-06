dotnet restore --infer-runtimes
dotnet build --configuration release
copy /y .\workstationgc.config .\bin\release\net451\win7-x64\mvc-clr.exe.config
.\bin\release\net451\win7-x64\mvc-clr.exe server.urls=http://0.0.0.0:5000
