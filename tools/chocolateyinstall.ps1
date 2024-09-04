$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/stevieb9/berrybrew/blob/master/download/berrybrew.zip?raw=true' 

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    unzipLocation  = $toolsDir
    fileType       = 'exe' 
    url            = $url

    softwareName   = 'berrybrew*'

    checksum       = '0B19F94A135FC9964DD94E4D5A11594812877785E95E870C1894736B272E093C'
    checksumType   = 'sha256' 
}

Install-ChocolateyZipPackage @packageArgs 
