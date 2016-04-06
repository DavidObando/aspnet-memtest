dotnet restore --infer-runtimes
dotnet build --configuration release
copy /y .\servergc.config .\bin\release\net451\win7-x64\basickestrel-clr.exe.config
.\bin\release\net451\win7-x64\basickestrel-clr.exe server.urls=http://0.0.0.0:5000
