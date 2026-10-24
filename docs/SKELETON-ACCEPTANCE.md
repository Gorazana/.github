# Gorazana package skeleton — acceptance specification

The existing `elcomware/goravel-package-skeleton` is the authoritative baseline until its transfer completes. Preserve its history; do not reconstruct it as an empty repository.

## Required distribution modes

Every generated package must declare which of these it supports; do not pretend the modes are interchangeable.

1. **Managed Go package:** module imported and upgraded by `go get`; native Goravel service provider, contracts, facades and configurable defaults.
2. **Publishable assets:** explicit installation/publish/unpublish operations for config, providers, migrations, stubs, translations and optional views. Respect host-owned edits, support dry-run, verify conflicts and record applied provenance.
3. **Application-owned source/module:** opt-in source generation/export with conventional `app/`, `http/`, `database/`, `routes/`, `resources/`, and `tests/` boundaries, suitable for application modification. Export and upgrades require explicit ownership and merge policy. Go changes require recompilation.

## Package families

- **Backend-only:** provider, contracts, models, actions, queries, middleware, jobs and tests.
- **API-first:** routes/controllers/request validation, auth and tenancy boundaries, OpenAPI where relevant.
- **Admin/UI:** optional Vue + TypeScript + Inertia + Tailwind adapters; do not impose a frontend on backend consumers.
- **Domain modules:** managed core plus optional application-owned workflows; migrations and lifecycle are explicit.
- **Infrastructure adapters:** selected drivers, integration tests and optional external services, without forced network requirements.

## Generator requirements

- Interactive wizard and documented noninteractive mode (existing), with exact generated-file manifest and preview.
- Valid module/package identifiers and Go module major-version handling.
- Reproducible output; no upstream personal paths, identifiers or package-name remnants.
- Generate only chosen variants and correct imports; avoid placeholder production endpoints.
- Transactional/rollback-safe writes where feasible; no destruction of existing user files.
- Clearly document runtime code, publishable scaffolding and host-owned files.

## Native Goravel integration

Check and use actual framework extension points before introducing custom mechanisms. Include optional feature checks for ORM/migrations, SQLite and PostgreSQL, auth/authorization, queues/events, cache, filesystems, validation, mail, scheduling, and container binding. Version compatibility is verified, not assumed.

## Testing and acceptance gates

- Generator fixtures per family and per delivery mode.
- Unit, feature, consumer-installation, publishing round-trip and cleanup tests.
- Migration up/down and upgrade testing on SQLite and PostgreSQL where relevant.
- Go race tests, module ZIP consumer validation, build-tag combinations, and Windows/macOS/Linux coverage when supported.
- Frontend typecheck, build and browser tests only for selected UI variants.
- CI matrix declares runner requirements and separates self-hosted-only evidence from portable checks.
- SBOM/dependency scan, secret scan and security review prior to public releases.
- Versioned templates, upgrade documentation, changelogs, release automation and evidence ledger.

## Staged milestones

**S0 audit:** existing generator/workbench/features, defects and evidence.
**S1 variants:** family selection, managed/publishable/export modes and deterministic generator fixtures.
**S2 lifecycle:** publish/install/upgrade and ownership-safe migration paths.
**S3 verification:** consumer matrices, cross-OS, databases, security and optional UI.
**S4 adoption:** use skeleton to create one representative package of each family before expanding the roadmap.

No gate is considered passed without recorded executable results. Do not modify the active Defender/Tenancy CI configurations as part of skeleton work.
