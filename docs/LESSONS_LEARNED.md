# Engineering Notes and Lessons Learned

## What succeeded

Created a resource group, deployed a private-address VNet, configured a /24 subnet within a /16 network and confirmed settings from deployed Azure Portal views. Recorded supporting screenshots and learned to distinguish creation screens from observed state.

## What blocked compute deployment

Multiple budget-friendly VM SKUs returned `NotAvailableForSubscription` for the trial subscription in attempted regions. Some other VM families appeared selectable at much higher prices. I avoided treating availability of an expensive SKU as permission to spend the trial balance.

This constraint did **not** invalidate the verified VNet/subnet work. It motivated separating the cloud **network architecture portfolio** from unrelated server training and planning a staged, cost-controlled expansion.

## What I would improve next

1. Preflight region, resource quotas, subscription SKU eligibility and pricing **before** designing around compute.
2. Define tiers and traffic flows first, then select service SKUs and cost thresholds.
3. Implement network segmentation and test actual effective rules/routing, rather than using diagrams as security proof.
4. Verify two-zone workload distribution and practical failure recovery instead of assuming redundancy from an architecture drawing.
5. Keep deployment evidence, billing checks and cleanup instructions alongside code and diagrams.

**Interview summary:** "I built and verified a foundational Azure VNet and subnet, explained CIDR/address reservations, documented subscription-level VM SKU restrictions, and prepared a staged public-edge/private-tier, multi-zone network design. The advanced topology is still planned rather than deployed."
