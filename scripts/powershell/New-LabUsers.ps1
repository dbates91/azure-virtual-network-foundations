#Requires -Version 5.1
[CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
param(
    [Parameter(Mandatory = $true)][string]$CsvPath,
    [string]$DomainFqdn = 'adlab.test',
    [switch]$Execute
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$resolved = (Resolve-Path -LiteralPath $CsvPath).Path
$records = @(Import-Csv -LiteralPath $resolved)
if ($records.Count -eq 0) { throw 'CSV has no entries.' }
$permittedDepartments = @('IT','HR','Engineering','Security','Contractors')
$seen = @{}
foreach ($record in $records) {
    foreach ($field in @('FirstName','LastName','SamAccountName','Department','Title','Group')) {
        if ([string]::IsNullOrWhiteSpace($record.$field)) { throw "Missing $field in a row." }
    }
    if ($record.Department -notin $permittedDepartments) { throw "Unknown department: $($record.Department)" }
    if ($record.SamAccountName -notmatch '^[a-z][a-z0-9.]{2,19}$') { throw "Invalid synthetic SAM: $($record.SamAccountName)" }
    if ($seen.ContainsKey($record.SamAccountName)) { throw "Duplicate SAM: $($record.SamAccountName)" }
    $seen[$record.SamAccountName] = $true
}

if (-not $Execute) {
    Write-Output "PREVIEW ONLY: $($records.Count) disabled lab users for $DomainFqdn. No AD connection or changes."
    foreach ($record in $records) {
        Write-Output ("Would create DISABLED user '{0}' in OU={1} with proposed group '{2}'" -f $record.SamAccountName, $record.Department, $record.Group)
    }
    return
}

if ($DomainFqdn -ne 'adlab.test') { throw 'Lab safety gate: -Execute only supports adlab.test.' }
Import-Module ActiveDirectory -ErrorAction Stop
$domain = Get-ADDomain -Identity $DomainFqdn -ErrorAction Stop
if ($domain.DNSRoot -ne $DomainFqdn) { throw "Connected to an unexpected domain: $($domain.DNSRoot)" }

# Explicitly create DISABLED accounts only. Do not provision passwords or grant groups here.
# Group assignment needs separate authorization and verification.
foreach ($record in $records) {
    $ou = "OU=$($record.Department),$($domain.DistinguishedName)"
    $null = Get-ADOrganizationalUnit -Identity $ou -ErrorAction Stop
    if (Get-ADUser -LDAPFilter "(sAMAccountName=$($record.SamAccountName))" -ErrorAction SilentlyContinue) {
        Write-Warning "Skipping existing lab account: $($record.SamAccountName)"
        continue
    }
    if ($PSCmdlet.ShouldProcess("$($record.SamAccountName) in $ou", 'Create disabled AD user')) {
        New-ADUser -Name "$($record.FirstName) $($record.LastName)" `
                   -GivenName $record.FirstName -Surname $record.LastName `
                   -SamAccountName $record.SamAccountName `
                   -Department $record.Department -Title $record.Title `
                   -Path $ou -Enabled $false `
                   -ErrorAction Stop
        Write-Output "Created disabled lab user: $($record.SamAccountName)"
    }
}
