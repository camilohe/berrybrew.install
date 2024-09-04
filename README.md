# berrybrew.install
A [chocolatey](https://chocolatey.org/) [**package**](https://chocolatey.org/packages/berrybrew) to install [**berrybrew**](https://github.com/dnmfarrell/berrybrew) - the perlbrew for [Windows Strawberry Perl!](http://strawberryperl.com/)

## changes
- updated to install berrybrew 1.41
- updated to install berrybrew 1.26
- initial version: berrybrew 1.23 

## updating this package
- clone the repo `git clone https://github.com/camilohe/berrybrew.install.git`
- find the latest version and sha256 
```powershell
irm 'https://raw.githubusercontent.com/stevieb9/berrybrew/master/Changes' -OutFile .\Changes.txt
$ver = ((ls .\Changes.txt|sls '\d{4}-\d{2}-\d{2}'|select -First 1).Line -split '\s+')[0]

irm 'https://github.com/stevieb9/berrybrew/blob/master/download/berrybrew.zip?raw=true' -OutFile berrybrew.zip
$sha = (ls berry*.zip|Get-FileHash).Hash
echo "Latest version: $ver`n- sha256: $sha"
```
- update the sha256 value in tools\chocolateyinstall.ps1
- update the url in tools\chocolateyinstall.ps1 with the latest version
- update the version in rustup.install.nuspec
- commit your changes
- [package, test and publish](https://docs.chocolatey.org/en-us/create/create-packages-quick-start/)
- push your changes

