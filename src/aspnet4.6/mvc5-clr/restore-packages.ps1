
$nugetLocalPath = ".\.tools\nuget.exe"
$FileExists = Test-Path $nugetLocalPath 
If ($FileExists -eq $False) {
  # Download a temporary copy of nuget.exe
  Invoke-WebRequest https://dist.nuget.org/win-x86-commandline/latest/nuget.exe -OutFile nuget.exe

  # Install the bootstrapping tools and initialize the bootstrapping
  .\nuget.exe install -OutputDirectory ..\packages Microsoft.VisualStudio.Services.NuGet.Bootstrap
  ..\packages\Microsoft.VisualStudio.Services.NuGet.Bootstrap.*\tools\Bootstrap.ps1
  rm .\nuget.exe
}

.\.tools\nuget.exe restore -ConfigFile .\nuget.config -OutputDirectory ..\packages packages.config
