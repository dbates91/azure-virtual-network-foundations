# Thirty Fictional Enterprise Incidents — Practice Queue

**All incident scenarios are planned, not completed.** Keep the **root cause hidden** until investigation. The mentor presents the employee request and supplies clearly labeled simulated evidence, or real observations gathered in the authorized lab. Never describe simulated incidents as real employer incidents.

| ID | Category | Employee request (brief) | Skill focus |
| --- | --- | --- | --- |
| INC-001 | Identity + ITSM | "My work password isn't letting me sign in at CLIENT01." | Intake, identity, impacted user/device |
| INC-002 | Identity | "I was locked out twice today." | Lockout source and safe unlock |
| INC-003 | Identity | "Our new Finance hire can't access company folders." | Onboarding, OU/groups, manager approval |
| INC-004 | Identity/security | "An employee left today—can you shut off access?" | Offboarding and immediate containment |
| INC-005 | Identity | "I changed my password but my PC still rejects it." | Cached creds, connectivity and time |
| INC-006 | Authorization | "I'm in Finance but can't open the Finance share." | Groups, SMB/share and NTFS ACL |
| INC-007 | Identity/ITSM | "Several employees have login trouble before a meeting." | Impact, urgency, scoping and escalation |
| INC-008 | Windows | "My computer became very slow after opening reports." | CPU/RAM/storage triage |
| INC-009 | Windows | "The app won't launch, even after restarting." | Services, Event Viewer and process logs |
| INC-010 | Networking | "The domain hostname cannot be found." | DNS client configuration and DC discovery |
| INC-011 | Networking | "I have network bars but no access to resources." | IP, DHCP, gateway, routing |
| INC-012 | GPO | "The contractor desktop restrictions aren't working." | GPO link, scope, filtering, gpresult |
| INC-013 | Networking/permissions | "Our shared drive vanished from File Explorer." | Drive mapping, network path and SMB |
| INC-014 | Printing | "The printer says offline and my job is stuck." | Spooler, queue, drivers and access |
| INC-015 | Windows | "Windows Update fails whenever I restart." | Update error/reboot/service state |
| INC-016 | Remote support | "I need remote help but the session won't connect." | Authorization and remote support |
| INC-017 | Microsoft 365 | "Outlook keeps asking me to log in." | Tenant vs client vs license (simulate if needed) |
| INC-018 | Peripheral | "My microphone works in Windows but not Teams." | App/driver/device permissions |
| INC-019 | Microsoft 365 | "My OneDrive folder isn't syncing." | Sync client, conflict/quota (simulate if needed) |
| INC-020 | Security | "I clicked a suspicious email link." | Response, escalation, evidence preservation |
| INC-021 | ITSM | "Three employees need urgent help at once." | Prioritization, SLA and communications |
| INC-022 | Windows | "My Windows account loads a blank desktop." | Profile corruption and user state |
| INC-023 | Identity/network | "The computer can't log into our domain anymore." | Domain join/secure channel and DNS |
| INC-024 | Networking | "VPN says connected but internal apps time out." | Tunnels, routes, DNS (simulate if no VPN) |
| INC-025 | Security groups | "My manager approved access, but I still can't open it." | Group entitlement and token refresh |
| INC-026 | Networking | "The internal app port is unreachable." | Firewall, listener, TCP diagnostics |
| INC-027 | Security/MFA | "I'm getting MFA approvals I didn't request." | Compromise escalation, not blind reset |
| INC-028 | ITSM/security | "Two serious tickets arrive during the same call." | Impact/urgency and queue management |
| INC-029 | Blind assessment | "The workstation, network and account symptoms conflict." | Unfamiliar independent incident |
| INC-030 | Final assessment | "Handle a realistic multi-ticket morning support queue." | All eight methodology stages |

## Instructions for the trainer

1. Open exactly **one primary ticket at a time** and state user message, device, department, business impact and time sensitivity.
2. Do not provide diagnostic path or root cause up front. Act as employee when questioned.
3. Provide logs/configuration only when requested; label evidence **SIMULATED** when appropriate.
4. Require prioritized hypothesis and safe resolution and rollback. Do not allow credential leaks or unnecessary rights grants.
5. Require **post-fix validation, user communication and closure notes** before score.
6. Score out of 100 and recycle weak concepts through a new ticket with a different root cause.

The existing [HD-001–HD-012 starter scenarios](../tickets/SCENARIOS.md) remain intact; these 30 `INC-` tickets are an **expanded training queue**, not duplicate claims of work performed.
