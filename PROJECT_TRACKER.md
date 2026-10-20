# Azure Network Architecture — Implementation Tracker

**Evidence baseline:** October 19, 2026. Only screenshot-verified Azure network resources are marked complete.

| Deliverable | Status | Evidence / next validation |
| --- | --- | --- |
| Resource group `RG-ADLAB` | **Verified deployed** | [Screenshot 02](screenshots/02-resource-group-created.png) |
| `VNET-ADLAB` in West US 2, `10.10.0.0/16` | **Verified deployed** | [Screenshots 04 and 05](screenshots/05-vnet-overview-.png) |
| `AD-Subnet`, `10.10.1.0/24` | **Verified deployed** | [Screenshot 06](screenshots/06-ad-subnet-verified.png) |
| Public-facing edge design and private app/data subnets | **Planned only** | Approved CIDR map, traffic-flow diagram |
| NSGs, service routing, egress strategy | **Not deployed** | Effective route/NSG exports and connectivity tests |
| Availability-zone redundancy | **Not deployed** | Zone assignments for actual compute + failover evidence |
| Load balancer, gateway, health checks | **Not deployed** | Verified backend reachability and probes |
| Logging, diagnostics and alerting | **Not deployed** | Actual event/log outputs |
| Terraform / infrastructure as code | **Not implemented** | Reviewed plan, apply, tests, destroy |
| Cost validation and teardown | **Not completed** | Final resource inventory and billing checks |

## Technical decisions

1. Preserve `RG-ADLAB` and `AD-Subnet` as **historical deployed resource names**. The project is solely Azure network architecture.
2. Azure **subnets are regional** and can serve VMs placed in different availability zones; they are not inherently per-AZ like AWS subnets.
3. "Public" and "private" indicate intended exposure and traffic patterns, not an Azure subnet object's intrinsic type. Effective reachability depends on public IP/frontends, security rules, routes and workload configuration.
4. Do not provision chargeable resources without cost, SKU/quota, identity, security and teardown checks.
5. Every future completion claim requires an actual Azure deployment or test and sanitized evidence.

## Next checkpoint

Design and review the proposed CIDR allocation and permitted connections: internet → public HTTPS ingress → private app instances in two availability zones → private data access. **Do not mark this as deployed until verified.**
