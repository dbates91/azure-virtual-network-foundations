# Enterprise AD Help Desk — Portfolio Case Study

**Current implementation:** Azure resource group and virtual network/subnet are **deployed and verified by user-provided portal screenshots**. DC01, AD DS, domain join and Help Desk incidents remain **not implemented or resolved**.

## Business scenario

A fictional ~50-employee company, **Apex Technologies**, will receive identity, desktop sign-in, group-permission and DNS tickets. A Help Desk team needs a safe, consistently documented Tier 1 workflow without using real employee information.

## Proposed engineering solution

An Azure-hosted Windows Server AD DS + DNS environment, a **local VMware Fusion Windows 11 Pro client** connected over a future approved secure path, six departmental OU structures, role groups, ~50 synthetic users, scoped GPO tests and a structured training ticket queue. The original 25-user synthetic CSV is preserved until the new roster is reviewed.

## Technical controls

- Private management; no open RDP/AD ports to public internet.
- Protected administrator identity, synthetic user data, no passwords in Git.
- Script defaults to read-only preview; live user provisioning only through explicit authorization and disabled accounts.
- Cost estimates, subscription/license validation and verified teardown before marking Azure work complete.

## Verified evidence ledger

| Skill | Evidence | State |
| --- | --- | --- |
| GitHub project foundation | [Initial published commit](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/commit/ec8683c1862f5debd289b0fc6bf0477cff5b7cc8) | 35 project files published |
| Azure VNet and subnet | [Networking evidence](../../screenshots/README.md) | `RG-ADLAB`, `VNET-ADLAB` and `AD-Subnet` verified; `10.10.0.0/16` / `10.10.1.0/24` |
| Domain controller / AD DS | Not available | Not deployed |
| Joined client | Not available | Not deployed |
| Password reset / lockout tickets | Not available | Not executed |
| Group Policy/DNS troubleshooting | Not available | Not executed |
| Safe automation | [Offline quality run](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/actions/runs/38294061409) | Source and PowerShell syntax checks passed; AD execution pending |
| Actual Azure spending | Not verified | Resource group and VNet/subnet created; no VM charges claimed, trial credit balance unverified |

## Interview talking points

**Why AD DS?** It demonstrates users, groups, computers, OU/GPO and DNS dependencies behind daily Windows support tickets.  
**Why Azure?** It hosts a Windows Server lab when local hardware/virtualization choices are constrained, with strict cost and licensing gates.  
**What is my troubleshooting method?** Verify requester → scope symptoms → inspect account/network/policy → isolate → change safely → validate → document.  
**What can I truthfully claim?** Only code/labs actually implemented and verified; update this document as progress occurs.
