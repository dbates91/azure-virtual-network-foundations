# Validation and Evidence

Screenshots serve as evidence of *specific* claims, not of a complete functioning service.

| Screenshot | Evidence | Category |
| --- | --- | --- |
| [01 — Resource group configuration](../screenshots/01-resource-group-configuration.png) | Selected resource group settings | Configuration intent |
| [02 — Resource group created](../screenshots/02-resource-group-created.png) | Resource group appears in Azure | Deployed resource |
| [03 — Subnet configuration](../screenshots/03-ad-subnet-configuration.png) | Entered subnet name / prefix | Configuration intent |
| [04 — VNet deployment complete](../screenshots/04-vnet-deployment-success.png) | Azure reported deployment success | Deployment result |
| [05 — VNet overview](../screenshots/05-vnet-overview-.png) | Deployed VNet name, region, address range, DNS and tag | Post-deployment inspection |
| [06 — Subnet verified](../screenshots/06-ad-subnet-verified.png) | Deployed subnet prefix and 251 available addresses | Post-deployment inspection |

## Validation limits

- We did **not** test packets, workload communication, routing, AZ failure, NSG enforcement, or network security posture.
- An NSG not being associated at the subnet level is not equivalent to "securely isolated."
- The address `10.10.1.4` is an assignable address, **not** an observed VM NIC allocation.
- A conceptual high-availability diagram is a design hypothesis; it is **not** proof of redundant workloads.

## Evidence standard for the next stage

Save: actual deployed configuration, subnet / NSG associations, effective routes, workload placement zones, health checks, source/destination connectivity results, blocked traffic tests, monitoring outputs and teardown confirmation.

Before uploading screenshots to this public repository, redact account/subscription IDs, sensitive identifiers, passwords, tokens, credentials and security-sensitive information. Never place secrets in Git.
