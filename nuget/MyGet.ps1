# set env vars usually set by MyGet (enable for local testing)
#$env:SourcesPath = '..'
#$env:NuGet = "./nuget.exe" # https://dist.nuget.org/win-x86-commandline/latest/nuget.exe

$nuget = $env:NuGet

Copy-Item $env:SourcesPath\LICENSE $env:SourcesPath\LICENSE.txt # has to be .txt extension, don't check in

# parse the version number out of package.json
$bsversionParts = ((Get-Content $env:SourcesPath\package.json) -join "`n" | ConvertFrom-Json).version.split('-', 2) # split the version on the '-'
$bsversion = $bsversionParts[0]

if ($bsversionParts.Length -gt 1) {
  $bsversion += '-' + $bsversionParts[1].replace('.', '').replace('-', '_') # strip out invalid chars from the PreRelease part
}

# create packages
& $nuget pack "$env:SourcesPath\nuget\freeform.nuspec" -Verbosity detailed -NonInteractive -NoPackageAnalysis -BasePath $env:SourcesPath -Version $bsversion
& $nuget pack "$env:SourcesPath\nuget\freeform.sass.nuspec" -Verbosity detailed -NonInteractive -NoPackageAnalysis -BasePath $env:SourcesPath -Version $bsversion
