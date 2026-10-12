# Runbook — Domain Sign-In and DNS

**Status: proposed troubleshooting procedure.**

1. Confirm client networking (`ipconfig /all`, adapter link, route and appropriate DNS server). Ensure client uses AD DNS for `adlab.test`.
2. Test resolver path and DC discovery: `Resolve-DnsName -Type SRV _ldap._tcp.dc._msdcs.adlab.test`, `nslookup DC01.adlab.test`.
3. Compare connectivity and time synchronization; check DC identity and Windows event logs.
4. If login fails, inspect account locked/disabled status and distinguish authentication from workstation secure-channel errors.
5. For GPO: `gpresult /r`, `gpupdate /force` only when appropriate, and GroupPolicy operational events; do not use forcing policy as a substitute for diagnosing scope.
6. For domain trust: test `Test-ComputerSecureChannel`, review machine account before any disjoin/rejoin operation.
7. Apply smallest approved repair, then document command result, successful test, rollback and what prevents recurrence.

**Avoid:** open RDP ports to the internet, making every user Domain Admin, broad disabling of the firewall, and copying secrets into command histories.
