# Fictional Enterprise — Apex Technologies

**Concept design / not deployed to Azure or Active Directory.** Use *synthetic* accounts only.

## Company support simulation

- Approximate workforce: **50 fictional employees**, *not* 50 VMs.
- Departments: **IT, Finance, Human Resources, Sales, Operations, Management**.
- IT service desk handles identity and entitlement changes, Windows 11 support, desktop issues, DNS/domain issues, printer support, Microsoft 365 practice and escalation.
- DC01 intended on Azure Windows Server AD DS (`adlab.test`). The Windows 11 Pro CLIENT01 is currently a **local VMware Fusion workstation** (user-reported), not within the Azure VNet.
- Include departmental shared-folder access exercises with least-privilege AD security groups and NTFS/share ACLs.

## Proposed OU hierarchy (subject to lab verification)

```text
adlab.test
├── OU=Users
│   ├── OU=IT
│   ├── OU=Finance
│   ├── OU=HumanResources
│   ├── OU=Sales
│   ├── OU=Operations
│   └── OU=Management
├── OU=Computers
│   └── OU=Workstations
├── OU=Groups
├── OU=ServiceAccounts (optional; no real secrets in repository)
└── OU=DisabledUsers
```

## Proposed role-group model

| Group | Allowed resource use (example only) |
| --- | --- |
| `GG-IT-Support` | Authorized routine workstation support; not unrestricted Domain Admin |
| `GG-Finance-Users` | Finance share read/write as approved |
| `GG-HR-Users` | HR share access as approved |
| `GG-Sales-Users` | Sales resource access |
| `GG-Operations-Users` | Operations tools and shares |
| `GG-Management-Users` | Management resources, not domain-wide privilege |
| `GG-VPN-Users` | Future VPN entitlement simulation only if a VPN is implemented |

**An OU** organizes objects and provides policy/delegation scope. **A security group** grants entitlement via security principals/ACLs. Department groups alone do not create permissions until applied on resources. Review NTFS and share access separately.

## Existing seed data and migration plan

The repository currently has an **older 25-user, five-department synthetic CSV** under [data/lab-users.csv](../../data/lab-users.csv). It remains unchanged to preserve existing work; it does **not** reflect this proposed six-department Apex Technologies workforce.

**Next data milestone, after the infrastructure is safe:** generate a new 50-account synthetic roster covering six departments, review uniqueness/group/OU mapping, and adjust the *preview-only* PowerShell importer before any import. **Do not run the old seed script against a new OU layout**: its organizational-unit paths differ. No users have been created.

## Cost constraint

Reuse the one Windows Server and one local Windows 11 VM. Do not create 50 compute instances, paid Azure VPN gateways or Microsoft 365 tenants without eligibility/cost review.
