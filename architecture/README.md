# Lab Architecture — Design Only

**Type:** Traditional self-managed Windows Server 2022 Active Directory Domain Services (AD DS) and DNS on an Azure Infrastructure-as-a-Service virtual machine. Not a managed Entra Domain Services deployment.

| Component | Planned identifier | Role |
| --- | --- | --- |
| Resource group | `rg-adlab` | Cost/teardown boundary; dedicated only to this lab |
| VNet | `vnet-adlab` / `10.10.0.0/16` | Isolated network |
| AD subnet | `snet-identity` / `10.10.1.0/24` | Private DC and eligible client |
| Domain controller | `DC01` / `10.10.1.4` | Windows Server 2022 AD DS + DNS |
| Client | `CLIENT01` | Windows 11 if licensing eligible; domain joined |
| AD domain | `adlab.test` | Isolated training forest, no public domain delegation |

**Security:** Management path requires approved private access (e.g. eligible Azure Bastion, VPN or similarly secured method). Avoid inbound internet RDP, WinRM, LDAP, SMB or Kerberos. Azure Bastion can be a meaningful hourly expense, and is not presumed included in free credits. Allow only required private domain-client and management traffic. Secure built-in admin accounts and keep directory data synthetic.

**DC IP:** Set static allocation of `10.10.1.4` on the Azure NIC; understand Azure address reservation rules and confirm no conflicts. After AD promotion, set custom VNet DNS resolver(s) and refresh clients; validate SRV records and login/DNS flow. One DC is sufficient for a *basic short-lived lab* but has no high availability; do not call it an enterprise-resilient deployment.

**Identity distinction:** AD DS on Azure VM provides traditional OU/GPO/LDAP/Kerberos/domain join. Microsoft Entra ID is a separate cloud identity platform and does not automatically provide an on-premises-style OU/GPO domain controller. Entra ID administration can be added as an optional future project phase.

See [Azure deployment checklist](../docs/deployment/AZURE_DEPLOYMENT_PLAN.md) and [cost policy](../COST_AND_SECURITY.md).
