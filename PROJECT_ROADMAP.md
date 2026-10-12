# Official Enterprise AD Help Desk Lab Roadmap

**Lab project only — all phases Not Started.** The sequence supports a focused **four-week sprint**, but each stage completes only after deployment/testing evidence, troubleshooting notes and safe cost management.

| Phase | Scope | Suggested sprint | Status |
| --- | --- | --- | --- |
| 0 | GitHub foundation, Azure eligibility and cost/security gates | Week 1 | Not Started |
| 1 | Windows Server DC01, AD DS and DNS on Azure | Week 1 | Not Started |
| 2 | OUs, groups and fictional users | Week 1 | Not Started |
| 3 | Domain join and Windows client support | Week 2 | Not Started |
| 4 | Password resets, account lockouts, onboarding/offboarding tickets | Week 2 | Not Started |
| 5 | Group Policy, permissions and DNS break/fix | Week 3 | Not Started |
| 6 | PowerShell automation, ticket reporting and documentation | Week 3 | Not Started |
| 7 | Blind tickets, remediation, teardown and interview case study | Week 4 | Not Started |

## Phase 0 — Plan and constrain spending

Confirm Windows 11 usage rights or alternative client, subscription eligibility, Region, pricing estimates, budget alerts, secure RDP management, costs of storage/Bastion, and teardown. **Verify** account audit and actual approved budget before deploying. Merely creating this repository does not complete the phase.

## Phase 1 — Set up domain controller and DNS

Prepare Azure resource group and private VNet. Deploy Windows Server 2022 DC01 with an Azure NIC private IP reservation (proposed 10.10.1.4). Install and promote AD DS + DNS to a new isolated `adlab.test` forest. Configure VNet custom DNS and validate domain SRV records, DNS resolution and DC health. **No public RDP/LDAP exposure.**

## Phase 2 — Simulate a company directory

Create departmental OUs and role-oriented Global security groups. Review the synthetic 25-person CSV. Preview PowerShell provisioning, then explicitly execute authorized creation of disabled accounts only after DC validation. Demonstrate scoped access and OU targeting, then verify AD objects with actual read-only queries.

## Phase 3 — Domain-joined workstation

Deploy an eligible Windows 11 client or an appropriately licensed alternative and join it to the domain. Confirm DNS settings, AD user sign-in, group memberships, workstation object and domain secure channel. Remove/rejoin **only in a safe test**, with rollback. Document a hardware/license-aware alternative if Windows 11 VM isn't supported for the subscription.

## Phase 4 — Tier 1 identity ticket operations

Execute incident scenarios for verification, reset/unlock, new hires, transfers and termination. Demonstrate authorization, secure password handling, ticket updates and closure. [Tickets](docs/tickets/README.md) define expected evidence; none count as completed without real lab execution.

## Phase 5 — Group Policy and DNS troubleshooting

Create a test GPO for a restricted Contractors OU, intentionally introduce harmless scope/policy mistakes, use `gpresult` and Event Viewer; create A/CNAME test records, diagnose resolution with `Resolve-DnsName` and `nslookup`. Include share vs NTFS access example if storage is within budget.

## Phase 6 — PowerShell operations and documentation

Use reviewable scripts for previewed user provisioning, read-only lockout/group status and safe reports. Validate offline structure tests; do not store credentials in source. Document commands, expected vs actual findings, limitations and a concise interview explanation.

## Phase 7 — Blind ticket capstone and portfolio

Complete at least five verified realistic tickets and two independent break/fix incidents. Build a case study that explains design, cost/security controls and actual evidence, and verify teardown. Prepare short scenario answers. No invented employee incidents, uptime percentages or screen captures.

### Required evidence for phase completion

- [ ] Real implementation (or accurately labeled offline simulation)
- [ ] Exact authorized administrative change and justification
- [ ] Security, identity-verification and least-privilege review
- [ ] Reproducible observed command/GUI checks
- [ ] Cause of any break/fix, result and rollback
- [ ] Cost and teardown verification when Azure services ran
- [ ] Sanitized screenshots/ticket notes linked in GitHub
- [ ] 60–90-second technical interview summary
