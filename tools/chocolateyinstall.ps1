$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/stevieb9/berrybrew/blob/master/download/berrybrew.zip?raw=true' 

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    unzipLocation  = $toolsDir
    fileType       = 'exe' 
    url            = $url

    softwareName   = 'berrybrew*'

    checksum       = 'A7B09442E1407FA66A6F278699A311FB96FEA9D2771C7402C85745526E5FFCA3'
    checksumType   = 'sha256' 
}

Install-ChocolateyZipPackage @packageArgs 
