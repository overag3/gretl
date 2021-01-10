$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://prdownloads.sourceforge.net/gretl/gretl-2020e-32.exe'
$url64 = 'https://prdownloads.sourceforge.net/gretl/gretl-2020e-64.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'gretl*'
  checksum       = 'A9465A5DCD9B97C574895E426F5D38CA74861C2FE81D8610D6FEE11ACB2463A3'
  checksumType   = 'sha256'
  checksum64     = 'A89BBDA800BC252FE60609C67FDE69B5326201F10A8FFBD589BA314C5445B5BA'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
