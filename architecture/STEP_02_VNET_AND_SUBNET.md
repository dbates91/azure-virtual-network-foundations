# Step 2 — VNET-ADLAB and AD-Subnet

**Status: Not yet created or independently verified.** This is a guide for creating the network—not proof of deployment.

## Environment baseline

- Verified from user screenshots: Azure resource group `RG-ADLAB` exists in **West US 2**; it is tagged `Project = Azure-AD-HelpDesk-Lab` on its creation review page.
- User-reported: Azure free-trial subscription with initial $200 credit. Current balance, expiration and alerts are unverified.
- User-reported: Windows 11 Pro VM exists locally in VMware Fusion. Its activation, network settings and secure path to Azure are not verified.
- No evidence yet for VNet, subnet, DC01, AD DS, domain join or a working VPN.

## Network choice

| Component | Value | Purpose |
| --- | --- | --- |
| Resource group | `RG-ADLAB` | Dedicated project boundary |
| Region | `West US 2` | Match already created resource group |
| Virtual network | `VNET-ADLAB` | Address space for Azure infrastructure |
| VNet prefix | `10.10.0.0/16` | Private RFC1918 network |
| Subnet | `AD-Subnet` | DC01 and any future **Azure-hosted** identity-support resources |
| Subnet prefix | `10.10.1.0/24` | Private /24, 256 addresses / 251 assignable in Azure |
| Planned DC address | `10.10.1.4` | First usable subnet IP, later static Azure NIC assignment |
| Tag | `Project = Azure-AD-HelpDesk-Lab` | Project inventory and cost grouping |

**Why these prefixes:** /16 leaves space for additional subnets, and /24 provides enough addresses for this small identity lab. Address space must not overlap the user's local network or future VPN client address pool. Verify overlap before configuring a secure tunnel.

## Azure reserved addresses

Azure reserves **the first four and the last** IP in every subnet. For `10.10.1.0/24`:
- `10.10.1.0`: network address
- `10.10.1.1`: Azure gateway address
- `10.10.1.2`, `10.10.1.3`: reserved by Azure for DNS/service mapping
- `10.10.1.255`: final address, reserved
- `10.10.1.4`: first *assignable* private address; actual availability must be checked before setting static allocation.

Azure assigns the VM's private IP to its **Azure NIC**, not by hard-coding an arbitrary in-guest NIC configuration.

## Manual portal steps

1. In Azure Portal, open **Virtual networks → Create**.
2. **Basics:** subscription `Azure subscription 1`, resource group `RG-ADLAB`, network name `VNET-ADLAB`, Region `West US 2`.
3. **Security:** leave optional paid Azure Bastion, Azure Firewall, DDoS Network Protection, and other add-ons **disabled**. Do not provision NAT Gateway or VPN Gateway.
4. **IP addresses:** change the VNet IPv4 address space to `10.10.0.0/16`. If Azure prepopulates a different subnet, remove or edit it; create **`AD-Subnet` = `10.10.1.0/24`**. Leave other advanced configuration at defaults for now and record any changed choice.
5. **Tags:** `Project = Azure-AD-HelpDesk-Lab`.
6. **Review + create:** stop and check all names, Region, address ranges, optional services and cost implications. Take a sanitized screenshot for review before selecting Create.

## Verification, screenshots and technical evidence

- `03-vnet-configuration.png`: Review + create page with selected resource group, region, VNet, CIDR, subnet and relevant optional-feature settings. Redact IDs, emails and sensitive subscription/account details.
- After approved creation: `04-vnet-overview.png` showing the VNet **exists**, Region and address space.
- `05-ad-subnet-created.png` showing `AD-Subnet` and exact `10.10.1.0/24` in the VNet's **Subnets** blade.
- GitHub evidence caption: **What I configured**, **why /16 and /24**, **verified address ranges**, **whether VPN/client connectivity exists**, **security/cost implications**, **what would fail if DNS/subnet were incorrect**.

The "Review + create" screenshot proves intent; only the VNet/Subnets pages after deployment confirm that resources exist.

## Azure vs local VMware — important network boundary

DC01 would be in the Azure `AD-Subnet`. A **local** VMware Windows 11 client would remain on a separate LAN/VMnet, not on Azure `10.10.1.0/24`. Domain join requires secure routing to DC01 and working AD DNS/DC discovery, including Kerberos/LDAP and time synchronization. A properly configured private VPN is one option but may have substantial hourly cost, as does an Azure client VM. Choose and budget the connection **after VNet creation**, not while making the subnet.

## Common failure symptoms / interview prompts

- Mismatched CIDR or overlapping on-premises network → routing ambiguity and inaccessible IPs.
- Wrong subnet assigned to VM NIC → different address/gateway and unexpected security policy.
- Public RDP enabled to the world → avoidable attack exposure.
- Local Windows VM without Azure connectivity → cannot discover `adlab.test` DC despite having internet.
- Wrong client DNS after connectivity exists → domain join and domain login errors.

**Interview defense:** "I created a private Azure VNet and carved out a /24 for the domain controller. Azure reserves five IPs, making .4 the first assignable private IP. A static private NIC allocation supports DNS consistency, while the remote VMware client requires routing, not merely the same intended CIDR on paper."

References: [Microsoft — Virtual Network overview](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-networks-overview), [Reserved IPs](https://learn.microsoft.com/en-us/azure/networking/design-guide/vnets-subnets), [Private IP allocation](https://learn.microsoft.com/en-us/azure/virtual-network/ip-services/private-ip-addresses).
