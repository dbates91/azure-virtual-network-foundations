# Azure Fundamentals (AZ-900) — Cloud Infrastructure & Networking Lab

**AZ-900 Azure Fundamentals portfolio lab** | Cloud concepts · Azure regions and resource groups · VNets and subnetting · basic security and governance · cost awareness

**Project status (October 19, 2026):** Resource group, virtual network and one subnet **deployed and screenshot-verified**. A proposed higher-availability multi-tier topology is **design-only, not deployed**.

## Overview

This hands-on lab complements the **Microsoft Azure Fundamentals (AZ-900)** exam by documenting a real Azure resource group, regional virtual network and subnet. It connects hands-on results to core Azure terminology, the cloud shared-responsibility model, basic security and governance, and the consumption-based cost model.

**Scope:** This repository is a networking-focused *companion lab*, **not a complete substitute for all AZ-900 topics**, and it does not represent an earned certification. Future high-availability and multi-tier deployments are clearly identified as optional advanced learning, not AZ-900 lab requirements. No Active Directory or Windows Server workload is part of this project.

## Phase 1 — Verified infrastructure

| Resource | Observed configuration | Evidence |
| --- | --- | --- |
| Resource group | `RG-ADLAB` | [Resource group created](screenshots/02-resource-group-created.png) |
| Region | West US 2 | [VNet overview](screenshots/05-vnet-overview-.png) |
| Virtual network | `VNET-ADLAB` | [Deployment succeeded](screenshots/04-vnet-deployment-success.png) |
| Address space | `10.10.0.0/16` | [VNet overview](screenshots/05-vnet-overview-.png) |
| First subnet | `AD-Subnet`, `10.10.1.0/24` | [Verified subnet](screenshots/06-ad-subnet-verified.png) |
| Subnet capacity | 251 Azure-assignable addresses | [Verified subnet](screenshots/06-ad-subnet-verified.png) |
| DNS | Azure-provided DNS | [VNet overview](screenshots/05-vnet-overview-.png) |
| Subnet NSG | No association shown | [Verified subnet](screenshots/06-ad-subnet-verified.png); **not evidence of hardened isolation** |

The initial resource names include `AD` because these Azure resources were originally named for another proposed lab. They are preserved verbatim to match real deployment evidence. No directory service or VM was deployed in the verified Azure phase.

### Deployed network map

```mermaid
flowchart TB
  RG["Resource group<br/>RG-ADLAB · Verified"]
  subgraph WUS2["Azure · West US 2"]
    subgraph VNET["VNET-ADLAB · 10.10.0.0/16 · Verified"]
      SUB["AD-Subnet · 10.10.1.0/24 · Verified"]
    end
  end
  RG --> VNET
```

## AZ-900 objectives demonstrated and next exercises

| AZ-900 objective area | Evidence or learning activity | Status |
| --- | --- | --- |
| Regions, Azure resources, resource groups | West US 2 and `RG-ADLAB` documented in Azure | **Verified** |
| Virtual networks and subnets | `VNET-ADLAB`, `/16` CIDR and `/24` subnet | **Verified** |
| Availability zones and high availability | Explain zones vs regions and compare redundancy choices | **Conceptual exercise planned** |
| Network security and public/private endpoints | Compare NSGs, DNS, ingress and controlled connectivity | **Conceptual exercise planned** |
| Resource management and governance | Explore tags, RBAC, Azure Policy, resource locks | **Study/exploration planned** |
| Cost and monitoring concepts | Compare subscription credits, budgets, Azure Monitor, Advisor and Service Health | **Study/exploration planned** |
| Other AZ-900 domains (storage, compute, identity, cloud service models) | Microsoft Learn study and optional low-cost exercises | **Outside current verified network build** |

[Detailed AZ-900 objective mapping](docs/AZ900_ALIGNMENT.md) · [Official Microsoft exam guide](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-900)

## Optional advanced extension — Enterprise network architecture

**Optional post-AZ-900 extension:** All elements below beyond the existing VNet and first subnet are **planned, not deployed**. Later engineering practice could add:

- A **public-facing HTTPS ingress layer** (e.g. Application Gateway with WAF where appropriate).
- **Private application workloads** without direct public IPs.
- **Private data access**, private DNS and controlled outbound routing.
- **NSGs**, least-privilege access and effective-route verification.
- **Two Azure Availability Zones** for redundant application instances where the subscription and selected SKUs support them.
- Health probes, monitoring, simulated instance failure, recovery testing and documented teardown.

See [the architecture proposal](architecture/TARGET_ARCHITECTURE.md). In Azure, **VNets and subnets are regional**, not availability-zone-specific. The future zonal *resources* span zones while connecting to regional subnets.

## Implementation roadmap and evidence gates

| Milestone | Status |
| --- | --- |
| Resource group, VNet, `/16` address plan, initial `/24` subnet | **Deployed / verified** |
| AZ-900 objective review, governance, cost and security concepts | **Planned** |
| Advanced: diagram of edge, app and data tiers with explicit traffic rules | **Planned** |
| Additional subnets, NSGs, route tables | Not started |
| Public-facing load-balancing tier and private application instances | Not started |
| Deployment across two availability zones | Not started |
| Failover/health checks, monitoring, logging | Not started |
| IaC deployment, cost audit and teardown | Not started |

[Tracker](PROJECT_TRACKER.md) · [Cost and security](docs/COST_AND_SECURITY.md)

## Evidence

The [six sanitized Azure screenshots](screenshots/README.md) capture configuration, deployment confirmation and actual post-deployment inspection. Configuration screens alone are not proof that a service exists; separate post-deployment verification is provided.

## Repository navigation

- [AZ-900 objectives and exercise mapping](docs/AZ900_ALIGNMENT.md)
- [Verified architecture](architecture/CURRENT_ARCHITECTURE.md)
- [Future high-availability architecture](architecture/TARGET_ARCHITECTURE.md)
- [Build record](docs/IMPLEMENTATION.md)
- [Verification](docs/VALIDATION.md)
- [Networking concepts](docs/NETWORKING_CONCEPTS.md)
- [Lessons learned](docs/LESSONS_LEARNED.md)
- [Cost and security](docs/COST_AND_SECURITY.md)
- [Portfolio case study](docs/CASE_STUDY.md)
- [Screenshots](screenshots/README.md)

**Note on history:** The earlier unimplemented project material was removed from the default branch to keep this portfolio honest and focused; its original state is preserved in the [archive branch](../../tree/archive/active-directory-original). Historical resource names in screenshots are retained rather than falsified.
