# Azure Cost & Security Gate

**Status:** No Azure subscription or resources have been used by this repository. The prices and eligibility for this lab must be validated in the user's actual subscription and Region; no hourly prices are assumed here.

## Before deploying any virtual machine

- [ ] Verify subscription/credits, spending terms and resource quotas.
- [ ] Verify **Windows Server** image/compute pricing and **Windows 11 licensing/dev-test rights** for the intended usage. Consider a licensed alternative client if Windows 11 Azure rights are unavailable.
- [ ] Use Azure Pricing Calculator for Region and proposed VM sizes, OS license, storage, snapshots, public IP (if justified), backup, bandwidth, and remote management (Bastion/VPN).
- [ ] Inspect existing subscriptions/resources and create an appropriate resource group with tags. Azure budgets send **alerts, not spending shutdowns**.
- [ ] Set budget alerts and confirm recipients; schedule a bounded lab window and teardown time.
- [ ] Plan a private management path. **Never expose RDP 3389, WinRM or AD DS ports to 0.0.0.0/0**.
- [ ] Record cleanup steps and do not store Azure sign-in tokens or RDP files in the repository.

## Ongoing cost drivers

| Resource | Cost consideration | Mitigation |
| --- | --- | --- |
| Windows Server VM | VM compute + Windows licensing | Small approved size and limited runtime |
| Windows 11 VM | Compute + eligibility and license restrictions | Validate rights; use alternative client if needed |
| Managed disks | Disks may incur charges when VMs are deallocated | Deliberately delete unused disks and snapshots |
| Azure Bastion/VPN | Hourly and transfer charges vary by solution | Review management path options before enabling |
| Public IP | IP SKU/address billing may continue independently | Avoid public IP where possible; delete unneeded allocations |
| Bandwidth and logs | Egress, diagnostics and Log Analytics charges | Limit retention and scope |
| Backups/snapshots | Incremental storage and backup service fees | Explicit retention and cleanup |

## Security controls

- Azure access by MFA and least-privilege RBAC; no hard-coded secrets in scripts.
- AD privileged accounts separate from lab users; follow least privilege and documented change approvals.
- Use private Azure subnet(s), deny internet exposure of administrative/domain-controller protocols.
- Assign DC01 private address **10.10.1.4 in Azure NIC configuration**, not by imposing a conflicting guest static address.
- After DC DNS is available, configure VNet's custom DNS server and refresh/reboot relevant clients; verify AD SRV lookups before attempting domain join.
- Synthetic identities only. Accounts created through the sample script remain disabled until separately reviewed and securely given credentials.
- Never commit screenshots displaying secrets, Azure tenant/subscription identifiers, recovery keys, or credentials.

## Safe teardown procedure

1. Export only **sanitized** lab evidence, not AD database backups or secrets.
2. Confirm no other project owns resources in the dedicated lab resource group.
3. Shut down/delete the approved VMs and associated disks, IPs, NICs and optional Bastion/VPN components.
4. Review resources in the subscription/Region after deletion and reconcile costs as reporting becomes available.
5. Update [PROJECT_TRACKER.md](PROJECT_TRACKER.md) with observed charges/verification only when truly checked.

**References:** [Azure AD DS virtual machine deployment](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/deploy/virtual-dc/adds-on-azure-vm), [Windows 11 eligibility](https://learn.microsoft.com/en-us/azure/virtual-machines/windows/windows-desktop-multitenant-hosting-deployment), [budget behavior](https://learn.microsoft.com/en-us/azure/cost-management-billing/costs/tutorial-acm-create-budgets).
