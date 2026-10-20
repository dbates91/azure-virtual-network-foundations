# Cloud Networking Principles Demonstrated

## CIDR and subnetting

`10.10.0.0/16` provides 65,536 IPv4 addresses in the VNet's address block. A `/24` is 256 total addresses. Azure reserves **five** per subnet, leaving **251** assignable for `10.10.1.0/24`. Reserved addresses: `10.10.1.0` to `10.10.1.3`, plus `10.10.1.255`. `10.10.1.4` is the first candidate private host IP.

The `/16` leaves room for later nonoverlapping `/24` subnet allocations for separate tiers.

## Azure subnet vs AWS subnet

- **Azure:** A subnet is within a regional VNet. Its resources can have zone placement independently; the subnet itself is **not** assigned to one AZ.
- **AWS:** A subnet is assigned to one Availability Zone. High-availability AWS designs commonly create a subnet per AZ per tier.

Do not copy an AWS architecture into Azure without acknowledging this difference.

## Public-facing and private workloads

"Public" and "private" describe the *intended network exposure*, rather than an Azure subnet type. Public access requires public frontend/IP configuration and security/routing decisions. A private application workload should avoid direct public IPs, restrict ingress to the approved frontend and use controlled egress.

## Controls to add

- **Network Security Groups (NSGs):** permit required flows and deny unwanted ones; test effective rules.
- **Routing:** inspect system routes and user-defined routes (UDRs); plan outbound access explicitly.
- **Private endpoints / private DNS:** resolve a service to private connectivity and confirm public network access is restricted where supported.
- **Application Gateway / load balancing:** terminate public HTTPS and distribute to healthy private workloads.
- **Availability Zones:** distribute compatible compute across independent zones and test failover; validate data layer separately.
- **Observability:** diagnose drops, health transitions, access and costs with actual logs/metrics.

**Design work remaining:** Traffic matrix and capacity estimates, service eligibility, cost model, security review, resilience tests, teardown.
