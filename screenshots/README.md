# Screenshot Evidence — Azure AD Help Desk Lab

These images document **actual Azure Portal configuration and deployment activity from October 19, 2026**. Review the accompanying captions rather than assuming that every screenshot demonstrates a live, working Active Directory environment.

| Filename | Evidence type | What it establishes |
| --- | --- | --- |
| [01-resource-group-configuration.png](01-resource-group-configuration.png) | Pre-deployment configuration | `RG-ADLAB`, West US 2 and project tag |
| [02-resource-group-created.png](02-resource-group-created.png) | Deployed Azure resource | Resource-group entry exists |
| [03-ad-subnet-configuration.png](03-ad-subnet-configuration.png) | Pre-deployment configuration | Subnet name and CIDR selections |
| [04-vnet-deployment-success.png](04-vnet-deployment-success.png) | Deployment confirmation | Azure reports deployment successful; correlation ID has been concealed |
| [05-vnet-overview-.png](05-vnet-overview-.png) | Deployed resource inspection | VNet address space, Region, Azure-provided DNS and project tag; Azure identifiers concealed |
| [06-ad-subnet-verified.png](06-ad-subnet-verified.png) | Deployed resource inspection | `AD-Subnet` / `10.10.1.0/24` / 251 available IPs |

**Privacy check:** The uploaded 04 and 05 PNGs match the original redacted local files by Git blob SHA. For all future public evidence, conceal subscription/tenant IDs, sensitive resource IDs, identities, credentials, access tokens, private endpoints where security-sensitive and password material.

**What isn't proven:** No VM or stable DC01 private NIC IP has been configured; no AD DS, DNS forest, local-client tunnel, domain join, GPO or live Help Desk ticket has been verified.

See [README](../README.md#verified-azure-networking--october-19-2026) and [project tracker](../PROJECT_TRACKER.md). Future screenshots must link directly to an actual build or troubleshooting result, not merely show a console page.
