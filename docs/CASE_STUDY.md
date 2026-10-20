# Portfolio Case Study — Azure Networking Foundations

**Objective:** Establish and document the first layer of a cloud network, then design a staged expansion into secure, fault-tolerant Azure architecture.

**My contribution (verified):** Created resource group `RG-ADLAB`; created `VNET-ADLAB` in West US 2 with `10.10.0.0/16`; configured `AD-Subnet` `10.10.1.0/24`; verified the deployment, VNet and subnet in Azure Portal and saved six screenshots.

**Networking rationale:** A `/16` permits future subdivision; a `/24` supports a contained network segment with 251 assignable Azure private IP addresses after reservations. I preserved resource evidence and documented the difference between Azure's regional subnets and zonal compute.

**Obstacle:** Affordable Azure VM sizes returned `NotAvailableForSubscription`. I did not deploy a higher-priced instance just to complete the original server idea.

**Architecture extension (not deployed):** Public HTTPS gateway/WAF, private application subnet, private data access, NSGs, explicit outbound routes, two availability-zone app instances and failover validation. This is a target design, not a completed outcome.

**Next deliverable:** Create an approved traffic/CIDR plan and validate the first tier-separation changes before adding any high-cost services.

**What this project demonstrates today:** Resource scoping, IPv4 CIDR/subnetting, accurate implementation evidence, cloud cost awareness, and an explicit design/implementation boundary.
