powershell .\restore-packages.ps1
msbuild .\mvc5-clr.csproj /target:clean
msbuild .\mvc5-clr.csproj /p:Configuration=Release
"C:\Program Files (x86)\IIS Express\iisexpress.exe" /config:.\applicationhost.config /site:"mvc5-clr" /apppool:"Clr4IntegratedAppPool"
