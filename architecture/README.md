# Lab Architecture — Design Only

**Type:** Traditional self-managed Windows Server 2022 Active Directory Domain Services (AD DS) and DNS on an Azure Infrastructure-as-a-Service virtual machine. Not a managed Entra Domain Services deployment.

| Component | Planned identifier | Role |
| --- | --- | --- |
| Resource group | `RG-ADLAB` | Cost/teardown boundary; dedicated only to this lab |
| VNet | `VNET-ADLAB` / `10.10.0.0/16` | Isolated network |
| AD subnet | `AD-Subnet` / `10.10.1.0/24` | Azure-hosted DC01 (local VMware client is NOT in this subnet) |
| Domain controller | `DC01` / `10.10.1.4` | Windows Server 2022 AD DS + DNS |
| Client | `CLIENT01` | User-reported Windows 11 Pro in local VMware Fusion; Azure-to-local private connection not verified |
| AD domain | `adlab.test` | Isolated training forest, no public domain delegation |

**Security:** Management path requires approved private access (e.g. eligible Azure Bastion, VPN or similarly secured method). Avoid inbound internet RDP, WinRM, LDAP, SMB or Kerberos. Azure Bastion can be a meaningful hourly expense, and is not presumed included in free credits. Allow only required private domain-client and management traffic. Secure built-in admin accounts and keep directory data synthetic.

**DC IP:** Set static allocation of `10.10.1.4` on the Azure NIC; understand Azure address reservation rules and confirm no conflicts. After AD promotion, set custom VNet DNS resolver(s) and refresh clients; validate SRV records and login/DNS flow. One DC is sufficient for a *basic short-lived lab* but has no high availability; do not call it an enterprise-resilient deployment.

**Identity distinction:** AD DS on Azure VM provides traditional OU/GPO/LDAP/Kerberos/domain join. Microsoft Entra ID is a separate cloud identity platform and does not automatically provide an on-premises-style OU/GPO domain controller. Entra ID administration can be added as an optional future project phase.

See [Azure deployment checklist](../docs/deployment/AZURE_DEPLOYMENT_PLAN.md) and [cost policy](../COST_AND_SECURITY.md).

## Updated Azure/network interpretation (2026-10-19)

Only `RG-ADLAB` and West US 2 are evidenced by screenshots at present. Step 2 is [VNET-ADLAB / AD-Subnet](STEP_02_VNET_AND_SUBNET.md); do not claim the network deployed until verified. Local VMware CLIENT01 will not acquire an address inside the Azure subnet by simply assigning it. Secure routing and AD DNS must be implemented and checked before a join attempt. Azure VPN Gateway and Bastion are hourly-charge services; no such solution has been chosen or approved.

The original 25-user data and five-OU design is superseded for the **future fictional company**, but retained in source control; see [Apex Technologies organizational proposal](../docs/academy/APEX_TECHNOLOGIES.md). No users or OUs are verified to exist in AD DS.
