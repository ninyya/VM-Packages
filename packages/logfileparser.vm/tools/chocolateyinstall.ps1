$ErrorActionPreference = 'Stop'
Import-Module vm.common -Force -DisableNameChecking

$toolName = 'LogFileParser64'
$category = VM-Get-Category($MyInvocation.MyCommand.Definition)

$zipUrl = 'https://github.com/jschicht/LogFileParser/releases/download/v2.0.0.52/LogFileParser_v2.0.0.52.zip'
$zipSha256 = '39c42bb0245b91fffabaec03d3b77c3932fc03164ce12bfe460a05039a2e103c'

VM-Install-From-Zip -toolName $toolName -category $category -zipUrl $zipUrl -zipSha256 $zipSha256 -consoleApp $false -innerFolder $false
