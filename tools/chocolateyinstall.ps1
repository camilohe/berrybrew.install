$ErrorActionPreference = 'Stop'; # stop on all errors

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/stevieb9/berrybrew/blob/master/download/berrybrew.zip?raw=true' # download url, HTTPS preferred
$url64      = 'https://github.com/stevieb9/berrybrew/blob/master/download/berrybrew.zip?raw=true' # 64bit URL here (HTTPS preferred) or remove - if installer contains both (very rare), use $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe' #only one of these: exe, msi, msu
  url           = $url
  url64bit      = $url64
  #file         = $fileLocation

  softwareName  = 'berrybrew*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  # Checksums are now required as of 0.10.0.
  # To determine checksums, you can get that from the original site if provided. 
  # You can also use checksum.exe (choco install checksum) and use it 
  # e.g. checksum -t sha256 -f path\to\file
  checksum      = '82FB2245BF64BF2F42B9F372F3BB6607FB24312FDC711A06A336312CB9CF9E51'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = '82FB2245BF64BF2F42B9F372F3BB6607FB24312FDC711A06A336312CB9CF9E51'
  checksumType64= 'sha256' #default is checksumType
}

#Install-ChocolateyPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-package
Install-ChocolateyZipPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-zip-package

## Main helper functions - these have error handling tucked into them already
## see https://chocolatey.org/docs/helpers-reference
