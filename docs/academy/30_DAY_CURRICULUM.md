# Enterprise Help Desk Academy — 30-Day Sequence

**Fictional employer:** Apex Technologies, ~50 synthetic employees. Seven domains of Tier 1 support. This is a *prospective curriculum*, not 30 days completed, 30 verified incidents or employment experience.

## Start gate

Do **not** begin a ticket that requires Windows AD/domain connectivity until Phase 0 Azure spend/licensing/access review, VNet/subnet setup, DC01, `adlab.test` and local-client secure connectivity are validated. If a service is unavailable (e.g. Microsoft 365), use an **explicit simulated incident** with labeled hypothetical evidence. Existing 25-user CSV is preserved; 50-user organizational redesign is an approved *future* migration milestone.

## Session format

1. **Brief (10–15 minutes):** what service does, dependencies, failure modes.
2. **Hands-on (30–60 minutes):** real authorized lab or clearly indicated simulation.
3. **Support ticket (30–45 minutes):** open a single `INC-###`; mentor impersonates employee, user directs inquiry/diagnostics without pre-revealed root cause.
4. **Verification:** demonstrate actual recovery, or state clearly that simulated tests were hypothetical.
5. **Documentation:** capture scope/impact, priority, commands, root cause, resolution, user communication and preventions.
6. **Score:** 100-point rubric and an adjacent remediation scenario for deficiencies.

This is an adjustable pace: do not skip mastery gates to finish in 30 calendar days.

## Week 1 — Enterprise foundations and identity (Days 1–7)

| Day | Lab/briefing | Primary ticket | Core competency |
| --- | --- | --- | --- |
| 01 | Confirm known-good Azure + VMware topology, AD health, ticket system; take baseline | INC-001 | Help Desk intake, user verification and domain login |
| 02 | Account lifecycle, expiration and unlock logs | INC-002 | Lockout diagnosis before unlocking |
| 03 | HR-approved onboarding, approved groups | INC-003 | OU vs SG, least privilege |
| 04 | Offboarding and access revocation | INC-004 | Security-sensitive fulfillment |
| 05 | Password change, cached creds, token/cache scope | INC-005 | Authentication troubleshooting |
| 06 | Inspect membership and file-share ACLs | INC-006 | Authorization troubleshooting |
| 07 | Mixed identity review and repeat failed area | INC-007 | Escalation and validation |

## Week 2 — Windows, networking and access (Days 8–14)

| Day | Lab/briefing | Primary ticket | Core competency |
| --- | --- | --- | --- |
| 08 | Windows resource/performance triage | INC-008 | High CPU, RAM and disk |
| 09 | Windows services and Event Viewer | INC-009 | Service not running |
| 10 | DNS/DC discovery and `nslookup` | INC-010 | Domain resolution |
| 11 | DHCP, gateway, subnet, `ipconfig`, `tracert` | INC-011 | Incorrect addressing |
| 12 | GPO scope, filtering, `gpresult` | INC-012 | User policy failure |
| 13 | SMB share mapping, NTFS/share permission comparison | INC-013 | Mapped drive failure |
| 14 | Print spooler, queue, permissions or drivers | INC-014 | Printer support |

## Week 3 — Service Desk operations (Days 15–21)

| Day | Lab/briefing | Primary ticket | Core competency |
| --- | --- | --- | --- |
| 15 | Windows Updates, installed software repair | INC-015 | Patch and software failures |
| 16 | Remote support request intake, permissions | INC-016 | Secure remote assistance |
| 17 | Outlook/M365 sign-in and licenses (*simulated if no tenant*) | INC-017 | Identity vs license vs service |
| 18 | Teams audio/video and peripherals (*local or simulated*) | INC-018 | Endpoint/user support |
| 19 | OneDrive sync or mailbox permission (*simulated if no tenant*) | INC-019 | Cloud service troubleshooting |
| 20 | Security phishing report and escalation | INC-020 | Containment, evidence |
| 21 | ITSM queues, priority, updates and SLA | INC-021 | Concurrent ticket triage |

## Week 4 — Less help, more independent work (Days 22–28)

| Day | Lab/briefing | Primary ticket | Core competency |
| --- | --- | --- | --- |
| 22 | Windows profile, startup or software symptom | INC-022 | Independent workstation diagnosis |
| 23 | Domain-join or trust problem | INC-023 | Authentication + networking dependency |
| 24 | VPN or hybrid-connection failure (simulate if not deployed) | INC-024 | Route/DNS/firewall isolation |
| 25 | Security-group and access approval mismatch | INC-025 | Safe permissions corrections |
| 26 | Firewall/service connectivity blocked | INC-026 | `Test-NetConnection` diagnosis |
| 27 | Unexpected MFA or compromised account report (simulate if no tenant) | INC-027 | Security escalation |
| 28 | Two competing urgent employee tickets | INC-028 | Prioritization under load |

## Final assessment (Days 29–30)

| Day | Assessment activity | Ticket | Evidence |
| --- | --- | --- | --- |
| 29 | Blind multi-category incident, no early hints, independent diagnosis | INC-029 | Full incident record and rubric |
| 30 | Multi-incident queue, customer updates, verification and final interview debrief | INC-030 | Independent resolution rate; strengths, weaknesses and remediation plan |

## Competency gates

- **Level 1:** Initial guided demonstrations, then personally repeat.
- **Level 2:** Assisted break/fix; user asks for evidence, forms a hypothesis and verifies.
- **Level 3:** Independent novel tickets with no root-cause hints; check ticket, change/rollback, communication and evidence.
- Advance by score, safe operations and quality of reasoning—not calendar time. Repeat an adjacent scenario if score below 80 or the fix was unverified.
- **At least 30 substantive tickets** are the curriculum target, not a claim of 30 completed tasks.

Refer to [ticket catalog](TICKET_CATALOG.md), [scoring](SCORING_AND_ASSESSMENT.md), and [readiness](SAFETY_AND_READINESS.md).
