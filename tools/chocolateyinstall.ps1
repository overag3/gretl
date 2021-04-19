$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://prdownloads.sourceforge.net/gretl/gretl-2021a-32.exe'
$url64 = 'https://prdownloads.sourceforge.net/gretl/gretl-2021a-64.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'gretl*'
  checksum       = 'ECA9F21D123EBEA64768944636F94ECF4244F2177E4B3F07D323723135827098'
  checksumType   = 'sha256'
  checksum64     = 'CFA60BF1ED57491B542B680F9F97807AE8F0C7BA1B72BD1322CF88AFFD439C7C'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
