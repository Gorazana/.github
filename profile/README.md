<div align="center">
  <img src="assets/gorazana-banner.png" alt="Gorazana — Build on Goravel. Own what you build." width="100%" />

  <h1>Gorazana</h1>
  <p><strong>Reusable Goravel packages, adaptable application modules, and developer tooling.</strong></p>
  <p>We build composable foundations for Go applications—without asking developers to surrender ownership of their code.</p>
</div>

## Why Gorazana?

Gorazana is an independent package and tooling ecosystem built for developers using [Goravel](https://www.goravel.dev/), the Go framework inspired by Laravel.

Our approach is practical: reuse native Goravel capabilities, build focused components where gaps exist, and deliver polished workflows that applications can adopt without recreating the same infrastructure repeatedly.

### Three ways to build

| Mode | What it means | Ideal for |
| --- | --- | --- |
| **Managed package** | Reusable Go dependency with a defined contract and upgrades | Identity, tenancy, auditing, API services |
| **Publishable components** | Keep the package runtime, publish configuration, providers, migrations or views | Security configuration, settings, customization |
| **Application-owned modules** | Generate source into a Goravel application so its team can own, adapt and maintain it | Admin experiences, CMS, commerce and domain workflows |

> Application-owned source and full-module export are design goals; individual package documentation specifies which options actually ship. Go source changes require rebuilding the application.

## Package ecosystem

Gorazana is organizing its package roadmap in five connected areas. Names shown below are **planned** unless a repository is publicly available and documents a working release.

| Foundation | Security & governance | Application services | Content & data | Business & integration |
| --- | --- | --- | --- | --- |
| Modules | Defender | Notifications | Media | Billing |
| Admin | Tenancy | Workflows | Documents | Integrations |
| Settings | Activitylog | Scheduler | Search | AI |
| Features | Audit | Localization | Import/Export | Observability |
| | Licensing | Webhooks | Backup | |
| | | API | Sync | |

We also maintain a [package skeleton](https://github.com/elcomware/goravel-package-skeleton) for native Goravel package development. Existing repositories are under **elcomware** until any transfers are completed; no transfer is implied by this profile.

## Engineering principles

**Native first.** Respect Goravel's routing, ORM, migrations, providers, queues, cache and authorization infrastructure. **Explicit ownership.** Separate package-managed behavior from host-owned data and source. **Secure by design.** Validate tenant and permission boundaries, prevent replay, and audit sensitive operations. **Evidence over claims.** Treat source tests, real-database integration, runtime and browser checks as different verification levels.

## Get involved

Explore available repositories, follow package-specific installation instructions and open focused issues or pull requests where contribution guidelines are published. New repositories will appear as their specifications are ready for implementation.

<sub>Gorazana is an independent developer ecosystem. It is not affiliated with or endorsed by the Goravel framework maintainers.</sub>
