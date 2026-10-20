# Microsoft Azure Fundamentals (AZ-900) — Lab Alignment

**Purpose:** Show how a verified hands-on Azure **resource group + virtual network + subnet** supports preparation for foundational cloud concepts. This is a **networking-focused companion lab** and does **not** cover every AZ-900 objective or constitute proof of certification.

Official source: [Microsoft AZ-900 study guide — skills measured as of July 20, 2026](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-900).

## Official exam domains

| Domain | Microsoft exam weighting | How it relates to this project |
| --- | --- | --- |
| Describe cloud concepts | 25–30% | Cloud models, shared responsibility, high availability, scalability and consumption-based pricing — **conceptual review planned** |
| Describe Azure architecture and services | 35–40% | **Verified hands-on** regional resource group, VNet, subnet and IP planning; compare regions, AZs, public/private endpoints, compute and storage conceptually |
| Describe Azure management and governance | 30–35% | Azure Portal, resource hierarchy, tags, budgets/Cost Management, Policy, locks, IaC and monitoring — **conceptual review planned** |

## Implemented Azure infrastructure

- **Verified:** `RG-ADLAB` resource group; `VNET-ADLAB` in West US 2; address prefix `10.10.0.0/16`; `AD-Subnet` `10.10.1.0/24`, with 251 assignable IPs.
- **Evidence:** [screenshots](../screenshots/README.md), especially deployment confirmation, VNet overview and post-deployment subnet inspection.
- **Historical naming only:** `AD` in resource labels originates from the first design. No Active Directory services, DCs, DNS servers or VMs are part of this network build.
- **Not yet implemented:** security control enforcement, route and traffic tests, identity policies, storage, compute, monitoring, gateways, load balancers, availability-zone redundancy, application workloads.

## Guided AZ-900 concept exercises (do not require paid compute)

1. **Cloud models and responsibility:** Contrast IaaS, PaaS and SaaS; map responsibilities of the cloud provider versus the customer; distinguish public/private/hybrid models.
2. **Region vs Availability Zone:** Explain why a VNet/subnet is a **regional** Azure networking construct, while eligible VM instances can be **zonal**. Draw resilience tradeoffs without claiming deployed redundancy.
3. **Resource hierarchy:** Explain management groups → subscriptions → resource groups → resources; identify where the verified VNet belongs. Study how governance settings inherit and apply.
4. **CIDR subnetting:** Calculate `10.10.0.0/16`, `10.10.1.0/24`, reserved addresses and 251 assignable IPs; propose nonoverlapping prefixes.
5. **Networking services:** Describe VNet peering, NSGs, Azure DNS, VPN Gateway, ExpressRoute, public vs private endpoints. Distinguish conceptual understanding from implemented controls.
6. **Basic security:** Explain Microsoft Entra ID, RBAC, Zero Trust and defense in depth, Azure Policy and locks; do not claim any were deployed or configured from portal screenshots alone.
7. **Cost and monitoring:** Explore pricing calculator, quotas, trial-credit burn, tags, Azure Cost Management, Advisor, Service Health and Monitor. Avoid creating chargeable resources solely to tick objectives.
8. **Broader exam coverage:** Separately study Azure compute options, storage redundancy/tiering, identity/security, and management tools using Microsoft Learn. These are **not validated by this VNet build**.

## Optional engineering extension — beyond the foundational exam

[Proposed segmented network and multi-zone architecture](../architecture/TARGET_ARCHITECTURE.md) discusses an Internet-facing HTTPS edge, separate private application and data tiers, controlled routing, NSGs, availability-zone-distributed compute and practical failover tests.

**Status: Design only.** Complex network engineering, cross-zone failover and IaC are not required hands-on outcomes for AZ-900, and will not be represented as completed until actually deployed and tested.

## Evidence and portfolio integrity

A screenshot of a wizard records configuration intent; deployed resource views establish actual configuration. Only implemented and verified components are listed as completed. Treat project progress separately from exam readiness. See [validation boundaries](VALIDATION.md) and [tracker](../PROJECT_TRACKER.md).
