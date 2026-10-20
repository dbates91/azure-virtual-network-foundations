# Cost and Security Guardrails

## Current scope

Only Azure resource group, VNet and subnet have documented deployment evidence. The existence of a VNet/subnet alone does not imply a secure deployed application.

## Before future deployments

- Verify remaining subscription credits, expiration, SKU/region/quota eligibility and required permissions.
- Calculate expected hourly/monthly **all-in** charges for VMs, managed disks, public IPv4, Application Gateway/WAF, NAT Gateway, monitoring/logging, backups and data transfer.
- Set a spending cap/alert where supported and document cleanup procedures. Alerts do **not** replace periodic billing checks.
- Never expose RDP (3389), SSH (22) or application management interfaces directly to everyone on the internet.
- Use least-privilege identity/access roles, secure secret storage, no production data and no credentials in repository.
- Define exact intended allowed/denied traffic; validate effective NSGs, routing, workload placement and private endpoints.
- Do not claim high availability until two compatible zonal workloads, health checks and failure tests are **actually observed**.

## Teardown checklist (after infrastructure is deployed)

1. Inventory all deployed resources by resource group, region and tag.
2. Verify the impact before deleting shared/network dependencies.
3. Remove trial workloads, public IPs, gateways, VMs, managed disks and diagnostics created only for the lab when no longer required.
4. Confirm resource inventory after cleanup and review charges, allowing for billing latency.
5. Preserve sanitized evidence in GitHub.

**Caution:** Deleting resource groups is destructive. Confirm that no unrelated resources are in scope before attempting it.
