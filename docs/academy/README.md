# Apex Technologies — 30-Day Enterprise Help Desk Academy

**Integrated into this existing Active Directory portfolio, not a separate project.**

**Status:** Curriculum and simulated scenarios drafted. Training performance, issue resolutions and deployed infrastructure have **not** been verified.

## Scenario

Apex Technologies is a **fictional**, ~50-employee company supported by a centralized IT service desk. The lab is based on traditional Windows AD DS hosted on Azure IaaS with a local VMware Fusion Windows 11 workstation connected through a *future approved secure connection*. No real workers, business operations or customer impact are claimed.

**Seven incident families:** Active Directory/identity; Windows desktop; networking; Microsoft 365; printers/applications/peripherals; security; ITSM/customer support.

## Learning model

Each session: concise technology briefing → hands-on or explicitly simulated investigation → one employee ticket at a time → actual validation → sanitized ticket notes → 100-point assessment and remediation. Advance from Level 1 **Guided** to Level 2 **Assisted break/fix** to Level 3 **Independent** only as performance supports it. Do not infer proficiency from a completed calendar day.

- [30-day plan](30_DAY_CURRICULUM.md) — day-by-day sequential activities and milestones.
- [30-ticket practice queue](TICKET_CATALOG.md) — scenarios across seven categories. Do not reveal root causes before investigation.
- [Scoring and final assessment](SCORING_AND_ASSESSMENT.md) — categories, weights, scoring and readiness.
- [Company and access design](APEX_TECHNOLOGIES.md) — ~50 identities as a *design target*, no directory provisioning.
- [Lab readiness, fault injection and cost](SAFETY_AND_READINESS.md) — preserve working systems and protect $200 trial credit.
- [Existing ticket template](../tickets/TICKET_TEMPLATE.md), [runbooks](../runbooks/README.md), [portfolio evidence](../portfolio/CASE_STUDY.md).

## External guided resources

- [ServiceDesk Simulator](https://servicedesk-simulator.com/) — ticket intake, calls, communication, ITSM workflows, remote support.
- [SysDesks](https://sysdesks.com/) — guided Windows 11, AD, networking, Microsoft 365, printer and remote-support labs.

These are optional supplements. Use only where the actual accessible lesson matches the day's objective. Do not claim completing a provider lab unless completed.

## Do not proceed prematurely

Azure VNet/subnet configuration is the **current** build step. DC01, domain, VPN and CLIENT01 domain join are not yet verified. Complete [Step 2 network](../../architecture/STEP_02_VNET_AND_SUBNET.md) before moving to a cloud deployment or hands-on AD ticket.
