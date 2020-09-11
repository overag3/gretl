$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://prdownloads.sourceforge.net/gretl/gretl-2020d-32.exe'
$url64 = 'https://prdownloads.sourceforge.net/gretl/gretl-2020d-64.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'gretl*'
  checksum       = 'E966BD78B3F446F34A67975CE202D94426BD574D4FAB2080095DC3F52B4F84B1'
  checksumType   = 'sha256'
  checksum64     = '4A878AFEF49E039E04299A12E215C510CEC499712E1F3127FCC9856CC7820CD1'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
