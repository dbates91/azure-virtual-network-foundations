# Project Tracker — Evidence-Based

**Phase status:** `Not Started`, `In Progress`, `Needs Review`, or `Completed` only. Do not mark a phase Completed because templates/files exist.

| Phase | Milestone | Status | Evidence (commit/ticket/screenshot) | Verified date |
| --- | --- | --- | --- | --- |
| [0](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/issues/1) | Account / budget / licensing / private management plan | In Progress | Azure account created (user reported); Azure Resource groups screenshot reviewed: `RG-ADLAB` listed in West US 2, `Azure subscription 1`. Screenshot `02-resource-group-created.png` supplied in chat, **not yet committed to GitHub** | 2026-10-19 |
| [1](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/issues/2) | DC01 / AD DS / DNS | Not Started | — | — |
| [2](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/issues/3) | OUs / groups / users | Not Started | — | — |
| [3](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/issues/4) | Workstation domain join | Not Started | — | — |
| [4](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/issues/5) | Identity lifecycle tickets | Not Started | — | — |
| [5](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/issues/6) | GPO, DNS, access troubleshooting | Not Started | — | — |
| [6](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/issues/7) | PowerShell automation / documentation | Not Started | — | — |
| [7](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/issues/8) | Blind incidents / case study / teardown | Not Started | — | — |

## Verification log template

**Date / Ticket / Phase:** —  
**What I intended:** —  
**What I actually did:** —  
**User identity verification / authorization:** —  
**Observations and proof:** —  
**Root cause / fix:** —  
**Validation / rollback:** —  
**Security + cost considerations:** —  
**Evidence link / interview explanation:** —

## Initial record

Source scaffolding and hypothetical scenarios are supplied as learning materials. **No Azure resource, AD user, domain join, GPO, password reset or ticket is claimed as executed.**

## Published repository foundation (not an implementation phase)

- **2026-10-12:** All 35 prepared source files published. [Initial source commit](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/commit/ec8683c1862f5debd289b0fc6bf0477cff5b7cc8).
- **2026-10-12:** [First GitHub Actions run](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/actions/runs/38294061409) completed successfully (offline Python repository tests and PowerShell syntax checks only).
- Eight GitHub phase issues were initially created as Not Started. Subsequent work is tracked below. No DC01, CLIENT01, AD identities, GPOs, ticket resolutions, or measured costs have been verified.

## October 19, 2026 — Phase 0 activity (user-provided screenshots reviewed)

- User reported creating a new Azure account. The submitted **Review + create** screenshot showed `RG-ADLAB`, West US 2 and project tag `Azure-AD-HelpDesk-Lab`; a subsequent **Resource groups list** screenshot showed the new `RG-ADLAB` entry under `Azure subscription 1` in West US 2. This provides visual evidence of resource group creation.
- **Phase 0: In Progress**, not Completed. Resource group name/Region were visually verified from screenshots. Subscription credit/eligibility, licensing, budget controls, private access and teardown planning remain unverified.
- Two sanitized screenshots were provided in ChatGPT. Suggested filenames: `01-resource-group-configuration.png` and `02-resource-group-created.png`. The second screenshot shows the resource group **list**, not the resource group's detailed Overview page. **Neither image has been uploaded to this GitHub repository yet.**
- **The resource group is the first visually verified Azure resource. No Azure VM, domain controller, client VM, AD DS domain, users or security configuration is claimed as deployed or verified.**
- **2026-10-19:** User confirmed Azure subscription is an Azure Free Trial with an initial $200 promotional credit. Remaining balance, credit expiration date, subscription spending-limit status, and budget alert functionality have **not** been independently verified. Avoid upgrading to pay-as-you-go. Next intended resource: non-billable basic VNet `VNET-ADLAB` / `10.10.0.0/16`, subnet `AD-Subnet` / `10.10.1.0/24` in West US 2; VNet **not yet deployed**.

## October 19, 2026 — 30-day Academy integration / pending VNet

- User requested integrating the 30-day Enterprise Help Desk Academy into this **existing** repository, including fictional Apex Technologies (~50 employees, six departments), seven troubleshooting categories, ≥30 proposed incident tickets, Level 1–3 mentoring, 100-point scoring, supplemental ServiceDesk Simulator / SysDesks, and a final blind support assessment. These are **planned training artifacts**, not tickets resolved.
- Current Step 2 plan: `VNET-ADLAB` with `10.10.0.0/16`; `AD-Subnet` with `10.10.1.0/24` in `RG-ADLAB`, West US 2. VNet and subnet **not yet verified**. Proposed DC01 private Azure NIC IP `10.10.1.4` is the first assignable address, **not yet assigned**.
- User reported having a local VMware Fusion Windows 11 Pro client VM; this is **not confirmed to be domain joined or inside the Azure subnet**. Connectivity method, licensing, DNS and safe access remain undecided.
- Preserve the original 25-account seed and scripts while planning the new 50-person organizational model; **do not import old seed accounts into incompatible OUs**.
- Phase 0 remains **In Progress**. Do not mark VM/AD or tickets complete until actual verification and screenshots are recorded.
