#Requires -Version 5.1
[CmdletBinding()]
param([Parameter(Mandatory = $true)][ValidatePattern('^[a-z][a-z0-9.]{2,19}$')][string]$SamAccountName)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
Import-Module ActiveDirectory -ErrorAction Stop
$domain = Get-ADDomain -ErrorAction Stop
if ($domain.DNSRoot -ne 'adlab.test') { throw 'Read-only script is restricted to lab domain adlab.test.' }
$user = Get-ADUser -Identity $SamAccountName -Properties Enabled,LockedOut,PasswordExpired,Department -ErrorAction Stop
$groups = @(Get-ADPrincipalGroupMembership -Identity $SamAccountName | Select-Object -ExpandProperty Name | Sort-Object)
[pscustomobject]@{
    SamAccountName = $user.SamAccountName
    Enabled = $user.Enabled
    LockedOut = $user.LockedOut
    PasswordExpired = $user.PasswordExpired
    Department = $user.Department
    Groups = ($groups -join ', ')
} | Format-List
