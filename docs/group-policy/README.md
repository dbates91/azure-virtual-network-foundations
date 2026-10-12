# Group Policy Practice — Proposed

**Objective:** Restrict Control Panel for test users in the Contractors OU while leaving non-Contractor users unaffected.

1. Create a dedicated **test** user and group and verify current user OU/link location.
2. After authorization, create a GPO for the Contractors OU and configure a policy targeting Control Panel access.
3. Check security filtering and inheritance. Avoid modifying Default Domain Policy unless required by a specific domain-wide security baseline.
4. Use `gpupdate /force` on the test client when appropriate and `gpresult /h` / `gpresult /r` to inspect effective policy.
5. Intentionally create a harmless OU-link or filtering issue in the lab, document its symptom and restore.
6. Show an unaffected IT user as a negative control. Store no usernames, tokens or confidential identifiers in published reports.

**Status:** Not configured; expected outcomes are learning targets, not verification claims.
