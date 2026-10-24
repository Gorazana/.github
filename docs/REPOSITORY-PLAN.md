# Gorazana repository provisioning

This is the canonical initial package inventory. **Only the skeleton is approved for transfer during initial setup.** Defender and Tenancy stay with `elcomware` until their active CI work is complete and a separate transfer is approved.

## Conventions

- Repository slug: `goravel-<capability>` except `goravel-package-skeleton`.
- Language: Go; initialize from the reviewed skeleton only after it supports the intended delivery modes.
- Licensing: select explicitly per repository; do not assume MIT for future products.
- Start new package repositories **private and empty**; publish and initialize individually following an acceptance check. This prevents publishing nonfunctional packages.
- GitHub topics: `goravel`, `golang`, `gorazana` plus category-specific tags.
- CI is package-specific and must have an explicit supported Go/Goravel matrix. Self-hosted runners are not assumed to be available to new repositories.
- Repository protections, security features, secret settings, release management, and ownership require deliberate review; a newly created repository is not a completed package.

## Inventory (25 package candidates + skeleton)

| Category | Repositories |
| --- | --- |
| Foundation | goravel-modules, goravel-admin, goravel-settings, goravel-features |
| Security & Governance | goravel-defender (defer transfer), goravel-tenancy (defer transfer), goravel-activitylog, goravel-audit, goravel-licensing |
| Application Services | goravel-notifications, goravel-workflows, goravel-scheduler, goravel-localization, goravel-webhooks, goravel-api |
| Content & Data | goravel-media, goravel-documents, goravel-search, goravel-import-export, goravel-backup, goravel-sync |
| Business & Integration | goravel-billing, goravel-integrations, goravel-ai, goravel-observability |
| Template | goravel-package-skeleton (transfer candidate) |

The inventory is a roadmap, **not** a commitment that all 25 distinct capabilities need bespoke Goravel packages. Before writing implementations, reconcile overlap with Goravel native features and package boundaries.

## Phased execution

1. Confirm organization avatar, website, description and visibility in GitHub settings.
2. Create only the 23 new empty private candidate repositories (exclude Defender, Tenancy and Skeleton). Use `scripts/provision-repositories.sh`.
3. Transfer the existing private skeleton with GitHub's repository transfer flow, retaining history, tags and release metadata; verify its CI/webhooks/integration and update links.
4. Upgrade skeleton against [SKELETON-ACCEPTANCE.md](SKELETON-ACCEPTANCE.md), using an explicit verification matrix.
5. Initialize each candidate only when skeleton gates pass and its native-vs-package decision is complete.
6. Defer all Defender and Tenancy transfer decisions; their current CI remains under `elcomware`.

**Current status:** the 23 candidate repositories have not been provisioned by this document. The script requires a GitHub CLI session authorized as an organization owner, and is deliberately idempotent.
