# Help Desk Ticket Scenarios — Synthetic Practice Queue

**These are hypothetical tickets, not real user incidents.** All requester names refer to synthetic users in `data/lab-users.csv`. The desired outcome is defined, but the resolution is **not** presented as executed.

## HD-001 — Password forgotten

**Request:** An HR employee cannot remember a password. **Challenge:** Verify identity using an approved method, check user and lockout/disabled status, obtain authorization, reset password with a secure channel, require a password change at next logon, and validate. **Evidence:** ADUC or approved PowerShell steps, masked status and timestamp, ticket communication. **Escalate:** Verification fails or suspected compromise.

## HD-002 — Locked account

**Request:** Engineering employee reports repeated lockout. **Challenge:** Determine whether lockout or password expiry exists and trace possible stale credentials/failed sign-ins. Unlock only with authorization. **Verify:** Account state and controlled successful login. **Interview question:** Why is unlock alone an incomplete fix?

## HD-003 — New employee onboarding

**Request:** Manager authorizes an incoming contractor. **Challenge:** Approved start date, correct OU, disabled account creation pending password issue, group scoping, least-privilege review. **Verify:** Correct object attributes, group memberships, secure activation process. Do not invent a completion date.

## HD-004 — Urgent offboarding

**Request:** HR confirms employee exit. **Challenge:** Confirm authorized request, disable account, evaluate sessions, groups and access tokens within lab scope; never delete immediately without retention policy. **Verify:** Logon denied and audit of intended access changes.

## HD-005 — Department transfer

**Request:** User moves from HR to Engineering. **Challenge:** Remove obsolete HR access, add approved Engineering group, relocate OU if OU semantics require it, confirm GPO effects and access. **Verify:** Group/OU and access checks.

## HD-006 — Shared folder access denied

**Request:** Team member sees Access Denied. **Challenge:** Diagnose identity, share-level permissions, NTFS ACLs, nested membership, token refresh and resource availability. **Verify:** Effective permissions, security boundary and expected access. **Do not** broadly add Everyone Full Control.

## HD-007 — Domain sign-in fails

**Request:** Domain user cannot log onto CLIENT01. **Challenge:** Compare network/DNS, time synchronization, DC reachability, username format, account lock/disable state, cached credentials and logon events. **Verify:** Cause-specific recovery rather than blind password resets.

## HD-008 — Domain join failure

**Request:** Technician cannot join a workstation to `adlab.test`. **Challenge:** Test `Resolve-DnsName -Type SRV _ldap._tcp.dc._msdcs.adlab.test`, DNS client resolver settings, time, connectivity and authorized join credentials. **Verify:** Computer account/secure channel and reboot.

## HD-009 — Group Policy not applying

**Request:** Contractors retain access to a restricted Control Panel setting. **Challenge:** Inspect GPO link, OU, inheritance, security filtering, WMI filters if used, loopback rules if relevant, `gpresult /h` and Event Viewer. **Verify:** Expected restriction on a designated test user only.

## HD-010 — DNS failure

**Request:** An internal lab alias no longer resolves. **Challenge:** Compare client DNS resolver, authoritative A/CNAME records, TTL/cache and query against DC. **Verify:** Correct result using `Resolve-DnsName`/`nslookup` after deliberate safe repair.

## HD-011 — Workstation trust relationship

**Request:** CLIENT01 reports trust relationship failure. **Challenge:** Check secure channel, machine password/clock/DNS first. Record tests such as `Test-ComputerSecureChannel` where appropriate. Consider a controlled rejoin only after preserving needed local state and reviewing the impact.

## HD-012 — VPN-Users entitlement

**Request:** Approved remote worker can't access VPN. **Challenge:** Check group membership and request authorization, then examine actual VPN policy and client state *if VPN is configured*. If VPN isn't deployed, clearly label the exercise as **group authorization simulation**, not a functional VPN troubleshooting resolution.
