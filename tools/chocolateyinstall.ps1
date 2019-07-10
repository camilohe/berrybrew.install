$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/stevieb9/berrybrew/blob/master/download/berrybrew.zip?raw=true' 
$url64 = 'https://github.com/stevieb9/berrybrew/blob/master/download/berrybrew.zip?raw=true' 

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    unzipLocation  = $toolsDir
    fileType       = 'exe' 
    url            = $url
    url64bit       = $url64

    softwareName   = 'berrybrew*'

    checksum       = '82FB2245BF64BF2F42B9F372F3BB6607FB24312FDC711A06A336312CB9CF9E51'
    checksumType   = 'sha256' 
    checksum64     = '82FB2245BF64BF2F42B9F372F3BB6607FB24312FDC711A06A336312CB9CF9E51'
    checksumType64 = 'sha256' 
}

Install-ChocolateyZipPackage @packageArgs 
