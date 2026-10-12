import csv
from pathlib import Path
import unittest

ROOT = Path(__file__).resolve().parents[1]
REQUIRED = [
    'README.md', 'PROJECT_ROADMAP.md', 'PROJECT_TRACKER.md',
    'COST_AND_SECURITY.md', 'SECURITY.md', '.gitignore',
    'architecture/README.md', 'docs/tickets/SCENARIOS.md',
    'docs/tickets/TICKET_TEMPLATE.md',
    'docs/deployment/AZURE_DEPLOYMENT_PLAN.md',
    'scripts/powershell/New-LabUsers.ps1',
    'scripts/powershell/Get-LabAccountStatus.ps1',
    'docs/portfolio/CASE_STUDY.md',
    '.github/workflows/quality.yml',
]

class RepositoryChecks(unittest.TestCase):
    def test_required_documents(self):
        for path in REQUIRED:
            with self.subTest(path=path):
                self.assertTrue((ROOT / path).is_file(), path)

    def test_synthetic_csv_has_25_unique_users(self):
        with (ROOT / 'data/lab-users.csv').open(newline='', encoding='utf-8') as fh:
            rows = list(csv.DictReader(fh))
        self.assertEqual(len(rows), 25)
        sams = [r['SamAccountName'] for r in rows]
        self.assertEqual(len(sams), len(set(sams)))
        self.assertEqual({r['Department'] for r in rows}, {'IT','HR','Engineering','Security','Contractors'})
        self.assertNotIn('Password', rows[0].keys())
        for row in rows:
            self.assertTrue(row['SamAccountName'].islower())
            self.assertTrue(row['SamAccountName'])

    def test_scripts_are_safe_by_default(self):
        script = (ROOT / 'scripts/powershell/New-LabUsers.ps1').read_text()
        self.assertIn('if (-not $Execute)', script)
        self.assertIn('Enabled $false', script)
        self.assertIn("DomainFqdn -ne 'adlab.test'", script)
        self.assertNotIn('ConvertTo-SecureString -AsPlainText', script)

    def test_no_deploy_commands_in_ci(self):
        script = (ROOT / '.github/workflows/quality.yml').read_text().lower()
        for phrase in ['az vm create', 'az group create', 'new-aduser ', 'terraform apply']:
            self.assertNotIn(phrase, script)

    def test_twelve_scenarios_planned(self):
        scenarios = (ROOT / 'docs/tickets/SCENARIOS.md').read_text()
        for i in range(1, 13):
            self.assertIn(f'HD-{i:03}', scenarios)

if __name__ == '__main__':
    unittest.main()
