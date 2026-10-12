# Safe PowerShell Lab Scripts

These scripts are **sample source**, not proof of AD administration performed.

| Script | Purpose | Default |
| --- | --- | --- |
| `New-LabUsers.ps1` | Preview 25 fictional AD user creations; on explicit `-Execute`, create disabled users only | **Preview only; no directory connection or write** |
| `Get-LabAccountStatus.ps1` | Read-only status/group membership check for one fictional user | Requires an authorized AD environment; read-only |
| `Test-LabPrerequisites.ps1` | Local checks for AD module and environment | **Read-only** |

## Examples (after a domain exists)

```powershell
# Preview only, portable to a PowerShell install (no AD module required):
./scripts/powershell/New-LabUsers.ps1 -CsvPath ./data/lab-users.csv

# Requires Windows RSAT ActiveDirectory module, admin authorization, existing OUs,
# explicitly targeted domain, and deliberate confirmation. Creates disabled accounts.
./scripts/powershell/New-LabUsers.ps1 -CsvPath ./data/lab-users.csv -DomainFqdn adlab.test -Execute -WhatIf
# Remove -WhatIf only after separately reviewing the plan and authorization.

# Read-only query when connected to a licensed/approved AD lab:
./scripts/powershell/Get-LabAccountStatus.ps1 -SamAccountName ava.mercer
```

**No passwords are generated or assigned by source control.** In real environments, organizational processes must establish strong initial credentials, change-on-first-logon, privileged separation, secure handling and audit trails. Scripts do not run unattended changes from GitHub Actions.
