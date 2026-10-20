# Implementation — Phase 1, Azure Network Foundation

**Evidence date:** October 19, 2026

The following sequence describes the actual portal-driven lab activity. No automation, route tables or compute resources are claimed.

1. Created resource group **`RG-ADLAB`** in the Azure subscription. [Creation configuration](../screenshots/01-resource-group-configuration.png) / [created resource](../screenshots/02-resource-group-created.png).
2. Created VNet **`VNET-ADLAB`** in **West US 2** with **`10.10.0.0/16`**. [Deployment success](../screenshots/04-vnet-deployment-success.png) / [verified VNet overview](../screenshots/05-vnet-overview-.png).
3. Configured **`AD-Subnet`** as **`10.10.1.0/24`** within the VNet. [Creation setting](../screenshots/03-ad-subnet-configuration.png) / [deployed subnet verification](../screenshots/06-ad-subnet-verified.png).
4. Inspected subnet capacity (**251** Azure-assignable addresses), VNet address range, Azure-provided DNS and the VNet project tag.
5. Deferred additional deployment after Azure subscription reported **`NotAvailableForSubscription`** for several cost-effective Windows VM sizes. Because this became a networking portfolio rather than a server project, no VM should be inferred from these attempts.

**Naming context:** Initial portal names reflect an earlier lab concept. They are kept unchanged here because documentation must align with the real Azure resource configuration. The current project is **Azure cloud network architecture**, with no Active Directory workload.

**What has not been done:** Traffic validation, private endpoints, network security rules, peering, NAT, custom DNS, gateway, zonal compute, and failover exercises have not been performed or evidenced.

**Next:** Review the [proposed segmented architecture](../architecture/TARGET_ARCHITECTURE.md), confirm nonoverlapping CIDRs and define a traffic rule matrix before provisioning any new resources.
