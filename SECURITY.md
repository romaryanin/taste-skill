# Security notes

## Codex installation review

The installable plugin content is declarative Markdown under `skills/`. Installing
the repository does not require running `skill.sh` or anything in `scripts/`.
Those files are maintainer utilities and are not plugin hooks.

Before installing a revision in Codex:

1. Review the selected `SKILL.md`; skill text becomes agent instructions.
2. Pin the install to a reviewed commit rather than trusting a moving branch.
3. Keep Codex approvals enabled for network access, package installation, and
   writes outside the workspace.
4. Treat dependency commands shown by a skill as suggestions. Review the package
   name and version, then ask before executing them.

## Script audit

- `skill.sh` only maps an allowlisted name to a repository-relative Markdown
  path. It does not evaluate input or source the selected file. Unknown names
  fail closed.
- The image scripts read local images and write generated assets. Their output
  paths are anchored to this checkout, not to the invoking process's working
  directory.
- No repository script downloads content, invokes a shell, reads credentials, or
  runs automatically during plugin installation.

The image scripts require the optional `sharp` dependency and contain local
maintainer input paths. Do not run them merely to install or use a skill.

## Reporting

Please report suspected vulnerabilities privately through GitHub's security
advisory interface for this repository. Do not include secrets or exploit data
in a public issue.
