$ErrorActionPreference = 'Stop'

$url = 'https://prdownloads.sourceforge.net/gretl/gretl-2021c-32.exe'
$url64 = 'https://prdownloads.sourceforge.net/gretl/gretl-2021c-64.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url            = $url
  url64bit       = $url64
  softwareName   = 'gretl*'
  checksum       = 'F56D872AA50B6CC6A7E11590770E1C675700D3D8F5093B2316AE9C8EEC366958'
  checksumType   = 'sha256'
  checksum64     = '780F69FB24E0944DA2F7E6C1C76739F95CC5F6D9905AB0442CFD25875EE487DA'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
