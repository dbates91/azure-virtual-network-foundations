# Readiness Audit, Controlled Fault Injection and Cost Safety

## Verified vs unverified as of 2026-10-19

| Component | Status | Evidence |
| --- | --- | --- |
| Azure free-trial account / $200 initial credit | User-reported | Credit remaining / expiration not verified |
| Resource group `RG-ADLAB` / West US 2 | Verified from user screenshots | Azure Resource groups list |
| Tag `Project = Azure-AD-HelpDesk-Lab` | User screenshot of planned RG configuration | Verify tag after creation if needed |
| VNet `VNET-ADLAB`, `AD-Subnet` | **Not verified** | [Step 2](../../architecture/STEP_02_VNET_AND_SUBNET.md) |
| Azure DC01 VM | **Not verified** | No actual instance/IP screenshot provided |
| AD DS, DNS, GPO, `adlab.test` | **Not verified** | No domain health or DNS output |
| Local VMware Fusion Windows 11 Pro | User-reported configured | No screenshot/IP/network information verified |
| Azure-to-local secure tunnel | **Not designed/deployed/verified** | Financial/network assessment required |
| Microsoft 365 administrative tenant/license | **Not verified** | Use clearly labeled simulations unless eligible |

## Lab operating principles

- Preserve anything already verified. Never replace working systems just to match a written plan.
- Baseline known-good domain controller health and snapshot/restore or documented recovery **before** destructive troubleshooting.
- Do not stop the only DC to invent incidents. Do not lock out or disable the only administrator. Do not run password spraying, real phishing or attacks against production.
- Fault injection must be **isolated, reversible, approved, recoverable and cost-bounded**. If environment unavailable, provide an explicitly simulated ticket and simulated logs.
- Ensure the local Windows 11 VM has a licensed OS and controlled network settings. It cannot simply be assigned an Azure `AD-Subnet` IP; use correct routing and AD DNS over a justified secure connection.
- Azure VPN Gateway and Azure Bastion can incur hourly fees; do **not** assume they are included in the free trial or deploy them merely for this training.
- Use Azure VM auto-shutdown and verify **deallocated** state outside study sessions; disks, IPs and other ancillary resources may continue to cost money. Check spending/remaining credit and decommission before trial expiry.
- Don't expose RDP/LDAP/SMB/Kerberos directly on a public IP to make domain joining easier.
- Azure AD DS on a Windows VM is not the same as Entra ID or managed Entra Domain Services. Microsoft 365 / Outlook / Teams / OneDrive tickets must remain **simulations** unless an appropriately licensed tenant is available.

## Ticket handling

- Start with employee-reported symptom, scope and business impact.
- Do not disclose root cause before learner investigation.
- Mentor acts as the employee, supplies only requested diagnostics, challenges assumptions and requires validation.
- Prefer help desk ITSM: intake → identity verification → impact/urgency → investigation → safe resolution/escalation → user confirmation → closure and prevention.
- Simulations are educational evidence, **not employment experience**.

## Daily sequence

**Technical briefing → hands-on lab or simulation → one ticket → validation → documentation → 100-point assessment**. Add further tickets as capability/time allows; use [ServiceDesk Simulator](https://servicedesk-simulator.com/) and [SysDesks](https://sysdesks.com/) where they support the current objective.

## Documentation

Every completed ticket: date, category, ticket ID, actual or simulated mode, anonymized requester and device, impact, hypotheses, commands and what each command reveals, sanitized evidence, actual action and root cause, verification, communication/escalation, preventive action, scoring and interview summary.
