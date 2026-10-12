#Requires -Version 5.1
[CmdletBinding()]
param()
Set-StrictMode -Version Latest
Write-Output ('PowerShell version: ' + $PSVersionTable.PSVersion.ToString())
$ad = Get-Module -Name ActiveDirectory -ListAvailable
if (-not $ad) {
    Write-Warning 'AD PowerShell module (RSAT) is not available. Install on an authorized Windows admin machine.'
} else {
    Write-Output 'ActiveDirectory module available.'
}
Write-Output 'This check makes no domain connection and changes no Azure or AD resources.'
