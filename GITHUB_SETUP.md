# GitHub Repository Operations — Enterprise Active Directory Lab

**Repository:** https://github.com/dbates91/enterprise-active-directory-helpdesk-lab  
**Status:** Public GitHub foundation published; Azure and Active Directory infrastructure not deployed.

## Clone and explore

```bash
git clone https://github.com/dbates91/enterprise-active-directory-helpdesk-lab.git
cd enterprise-active-directory-helpdesk-lab
python3 -m unittest discover -s tests -p 'test_*.py' -v
```

Read [PROJECT_ROADMAP.md](PROJECT_ROADMAP.md) and [PROJECT_TRACKER.md](PROJECT_TRACKER.md). The eight [GitHub phase issues](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/issues) are the implementation queue and should remain open until work is verified.

## PowerShell and cloud safety

Scripts are samples for your **authorized** isolated `adlab.test` environment. User creation is preview-only unless you explicitly opt into a high-impact, confirmed change after domain validation. Do not run any Windows AD mutation or provision any Azure VM during repository setup.

Review [COST_AND_SECURITY.md](COST_AND_SECURITY.md), [Azure deployment plan](docs/deployment/AZURE_DEPLOYMENT_PLAN.md), Windows client licensing, secure management paths, and teardown before cloud spending.

## Evidence-first workflow

Create a topic branch for meaningful changes, record verified commands, update a ticket template with actual findings, open a PR, and update the tracker only after the required evidence exists. Do not put real employee data, credentials, secrets, subscriptions, or unsanitized screenshots in a public repository.

## Latest repository checks

The [initial offline CI run](https://github.com/dbates91/enterprise-active-directory-helpdesk-lab/actions/runs/38294061409) passed Python structure tests and PowerShell parsing; it does **not** validate deployed Azure infrastructure or Active Directory.
