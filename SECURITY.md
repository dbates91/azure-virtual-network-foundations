# Security Policy

This is an isolated educational lab blueprint, not a production identity platform.

Do not disclose real passwords, secret questions, recovery keys, Azure auth tokens, RDP files, AD backups or identifying tenant/subscription data. If a credential is accidentally committed, revoke/rotate it immediately and treat Git history as compromised, even if .gitignore is subsequently updated.

All administrative scripts require valid authorization and narrow domain targeting. Do not give fictional users Domain Admin privileges or expose RDP/WinRM/LDAP/SMB to the public internet. If submitting a security issue, never post secrets in a public GitHub issue; use a private reporting channel.
