# Runbook — Identity Lifecycle and Access

**Status: draft; no executed ticket evidence.**

1. **Verify:** confirm the requesting person through an approved identity-verification workflow. Never use knowledge of a password or public profile alone as verification. For high-risk changes, check manager/HR authorization.
2. **Scope:** check username, domain, OU, disabled/locked/expired state and any related sign-in symptoms. Don't disclose unrelated user data.
3. **Inspect:** permitted ADUC or read-only `Get-ADUser` lookups, role groups and relevant audit logs. Remember authentication is distinct from authorization.
4. **Isolate:** decide whether issue is password, lockout, expired access, wrong group, disabled state or DNS/connectivity.
5. **Change only what is approved:** reset and require password change through an approved secure method; unlock only after diagnosing; disable on verified offboarding; document role-group changes and approver.
6. **Validate:** test intended behavior with the lab user without exposing secrets; confirm unauthorized access remains blocked.
7. **Document:** sanitize evidence, record change/approval, final status, requester communication and escalation as required.

**Interview hook:** Verify identity first, diagnose before changing, limit permissions, test and document.
