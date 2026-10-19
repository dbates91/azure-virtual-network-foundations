# Azure AD DS Deployment Plan — Manual, Cost-Gated

**Never start the deployment without completing the prerequisite checks.** This plan deliberately does not include Azure CLI provisioning scripts.

## Gate A — subscription and image eligibility

- [ ] Confirm Azure subscription, remaining credits, eligible OS images and exact VM sizes.
- [ ] Verify Windows Server 2022 availability and Windows 11 Azure rights for **your** account. If Windows 11 isn't eligible, use a properly licensed alternative client rather than bypassing licensing.
- [ ] Estimate Windows VM, OS license, disk, Bastion/VPN, public IP, network egress and incidental logging costs for a defined number of hours.
- [ ] Set and verify budget alerts; these do not stop spending automatically.
- [ ] Agree a teardown window and don't deploy during idle study days.

## Gate B — private networking and secure management

- [x] Create dedicated resource group `RG-ADLAB` — **verified by user-provided Azure Resource groups screenshot in West US 2 on 2026-10-19**; no costs/permissions independently verified.
- [ ] Create `VNET-ADLAB` (10.10.0.0/16), subnet `AD-Subnet` (10.10.1.0/24), and review future NSG boundaries. [Step 2 guide](../../architecture/STEP_02_VNET_AND_SUBNET.md).
- [ ] Choose an authorized private admin path, estimating costs; do not expose port 3389 on the public internet.
- [ ] Plan time synchronization, backup/restore and the DC's fixed Azure NIC private IP.

## Gate C — DC01 configuration

1. Provision Windows Server 2022 only within the authorized scope and VM size.
2. Set its **Azure NIC private address** to `10.10.1.4`; ensure address availability. Do not create conflicting guest NIC settings.
3. Connect through the reviewed secure admin path. Install Windows updates (document reboots).
4. Install the AD DS and DNS roles and promote to **new forest** `adlab.test` using properly protected Directory Services Restore Mode credentials (never add to GitHub).
5. Set VNet custom DNS to DC01, refresh settings on dependent guests and verify DNS SRV entries.
6. Verify `Get-ADDomain`, `Get-ADDomainController`, `dcdiag`, and `Resolve-DnsName -Type SRV _ldap._tcp.dc._msdcs.adlab.test` with **actual results**.

## Gate D — workstation and support scenarios

1. Reuse the user-reported **local VMware Fusion Windows 11 Pro** as CLIENT01 after validating OS license, local VMware networking and a secure, cost-approved private route to Azure. An Azure-hosted Windows client is only an optional licensed, paid alternative, not the initial plan.
2. Confirm the **local client's** secure route to Azure DC01 and DNS resolution over that link, without exposing AD protocol or RDP ports publicly; then test SRV record resolution.
3. Join the domain after ensuring time sync/network reachability; reboot as needed and verify domain user login.
4. Implement OUs and groups, preview seed script, and create **disabled** fictional accounts only with authorized execution.
5. Execute tickets, record evidence, intentionally break only safe lab components, and restore.

## Gate E — teardown

Delete only resources owned exclusively by the lab. Review VMs, disks, NICs, public IP, Bastion/VPN and logs/storage/snapshots. Record actual charges after billing updates. Stopping a VM alone does **not** necessarily stop disks and networking costs. Verify lab deletion without impacting any other subscriptions/projects.

## Useful Microsoft documentation

- [Deploy AD DS on Azure VMs](https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/deploy/virtual-dc/adds-on-azure-vm)
- [Windows 11 Azure licensing](https://learn.microsoft.com/en-us/azure/virtual-machines/windows/windows-desktop-multitenant-hosting-deployment)

## Step 2 stop condition

Do not deploy DC01 before user supplies the VNet creation review and VNet/subnet overview evidence and the VM budget/secure access method is approved. The VNet and subnet themselves are not presently verified.
