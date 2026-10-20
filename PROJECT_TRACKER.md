# AZ-900 Azure Fundamentals — Lab Implementation Tracker

**Evidence baseline:** October 19, 2026. This repository is a networking-focused AZ-900 companion lab, **not a full certification course**. Only screenshot-verified Azure network resources are marked complete; all advanced multi-zone infrastructure is optional and unbuilt.

| Deliverable | Status | Evidence / next validation |
| --- | --- | --- |
| Resource group `RG-ADLAB` | **Verified deployed** | [Screenshot 02](screenshots/02-resource-group-created.png) |
| `VNET-ADLAB` in West US 2, `10.10.0.0/16` | **Verified deployed** | [Screenshots 04 and 05](screenshots/05-vnet-overview-.png) |
| `AD-Subnet`, `10.10.1.0/24` | **Verified deployed** | [Screenshot 06](screenshots/06-ad-subnet-verified.png) |
| AZ-900 architecture, cloud concepts and governance study | **Planned** | [Objective mapping](docs/AZ900_ALIGNMENT.md) and learning notes |
| Optional advanced: public-facing edge design and private app/data subnets | **Planned only** | Approved CIDR map, traffic-flow diagram |
| NSGs, service routing, egress strategy | **Not deployed** | Effective route/NSG exports and connectivity tests |
| Availability-zone redundancy | **Not deployed** | Zone assignments for actual compute + failover evidence |
| Load balancer, gateway, health checks | **Not deployed** | Verified backend reachability and probes |
| Logging, diagnostics and alerting | **Not deployed** | Actual event/log outputs |
| Terraform / infrastructure as code | **Not implemented** | Reviewed plan, apply, tests, destroy |
| Cost validation and teardown | **Not completed** | Final resource inventory and billing checks |

## Technical decisions

1. Preserve `RG-ADLAB` and `AD-Subnet` as **historical deployed resource names**. The project is a networking-focused **AZ-900 Azure Fundamentals** learning and portfolio lab.
2. Azure **subnets are regional** and can serve VMs placed in different availability zones; they are not inherently per-AZ like AWS subnets.
3. "Public" and "private" indicate intended exposure and traffic patterns, not an Azure subnet object's intrinsic type. Effective reachability depends on public IP/frontends, security rules, routes and workload configuration.
4. Do not provision chargeable resources without cost, SKU/quota, identity, security and teardown checks.
5. Every future completion claim requires an actual Azure deployment or test and sanitized evidence.

## Next checkpoint

Complete the low-cost AZ-900 objective mapping: explain regions vs zones, VNet/subnet boundaries, how Azure reserves IPs, resource groups, tags, pricing and basic security/governance. Only after those concepts are documented should the optional advanced CIDR/traffic-matrix design begin. **Do not mark advanced workloads as deployed until verified.**
