dotnet restore --infer-runtimes
dotnet build --configuration release
copy /y .\workstationgc.config .\bin\release\net451\win7-x64\basickestrel-clr.config
.\bin\release\net451\win7-x64\basickestrel-clr.exe
