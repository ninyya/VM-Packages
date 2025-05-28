$ErrorActionPreference = 'Stop'
Import-Module vm.common -Force -DisableNameChecking

$toolName = 'RegCool'
$category = VM-Get-Category($MyInvocation.MyCommand.Definition)

$zipUrl = 'https://kurtzimmermann.com/files/RegCoolX64.zip'
$zipSha256 = 'c42fb312717402e030f199fc7208e14f024feb4ee721510c60ae28ba77cbdfb2'

VM-Install-From-Zip $toolName $category $zipUrl -zipSha256 $zipSha256 -consoleApp $false -innerFolder $false
