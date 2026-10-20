# Azure Network Evidence — October 19, 2026

These screenshots demonstrate the **deployed Azure resource group, regional VNet and subnet**, plus their preceding wizard configuration.

| File | What it proves | Evidence type |
| --- | --- | --- |
| [01-resource-group-configuration.png](01-resource-group-configuration.png) | Proposed `RG-ADLAB` settings | Configuration |
| [02-resource-group-created.png](02-resource-group-created.png) | Resource group exists | Post-creation |
| [03-ad-subnet-configuration.png](03-ad-subnet-configuration.png) | `AD-Subnet` `10.10.1.0/24` was entered | Configuration |
| [04-vnet-deployment-success.png](04-vnet-deployment-success.png) | Azure VNet deployment succeeded | Deployment |
| [05-vnet-overview-.png](05-vnet-overview-.png) | Deployed `VNET-ADLAB`, `10.10.0.0/16`, West US 2, DNS/tag | Post-deployment |
| [06-ad-subnet-verified.png](06-ad-subnet-verified.png) | `AD-Subnet` `10.10.1.0/24`, 251 available IPs | Post-deployment |

**Historical naming:** Some screenshots contain `AD` in resource names because that is how the network was originally configured. The current lab is **Azure cloud network architecture**; no Active Directory service has been deployed here.

**Evidence integrity:** The original PNG blobs were retained without modification during repository cleanup. Some sensitive Azure identifiers in the uploaded evidence were previously redacted.

**Not demonstrated:** Multi-AZ compute, public/private workloads, NAT, routing tests, subnet NSG enforcement, load balancing, private endpoints or failover.

[Project README](../README.md) · [Verification boundaries](../docs/VALIDATION.md)
