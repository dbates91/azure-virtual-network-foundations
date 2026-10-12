# Help Desk Ticket Catalog — 12 Planned Scenarios

**Every ticket below is a *planned simulation*. None has been executed or resolved.** Use these to practice realistic support tasks, not to claim enterprise help desk work experience.

| ID | Ticket | Main skill | Severity teaching point |
| --- | --- | --- | --- |
| HD-001 | Employee password forgotten | Identity verification, reset and forced change | Confirm user's identity first |
| HD-002 | Account locked out | Inspect bad-password/lockout, unlock, cause | Don't unlock without diagnosis |
| HD-003 | New employee onboarding | OU, username, manager-approved groups | Least privilege and approvals |
| HD-004 | Employee termination | Disable account and revoke access | Time-sensitive access control |
| HD-005 | Department transfer | Group membership, OU movement | Remove legacy access |
| HD-006 | Shared folder access denied | Security groups, NTFS, share permissions | Authorization vs authentication |
| HD-007 | Can't log into domain | DNS, time sync, account status, network | Isolate root cause before changing password |
| HD-008 | Domain join fails | DNS SRV, domain discovery, privileges | Troubleshoot client-side configuration |
| HD-009 | GPO not applying | OU link, security filtering, gpresult | Effective policy scope |
| HD-010 | DNS name does not resolve | A/CNAME, forwarding, client resolver | Resolution path |
| HD-011 | Workstation trust broken | Secure channel / domain membership | Domain rejoin is a last resort |
| HD-012 | VPN group access missing | Approved group entitlement and policies | Don't grant without approval |

Pick each scenario from [ticket details](SCENARIOS.md) and record it using [TICKET_TEMPLATE.md](TICKET_TEMPLATE.md). If a lab step fails, record actual findings rather than inventing a clean result.

**Standard method:** Verify identity → Scope → Inspect → Isolate → Resolve → Validate → Document → Prevent.
