# Contributing to Gorazana

Thank you for helping build Gorazana's independent Goravel package ecosystem.

## Before starting

- Search existing issues and pull requests before opening a duplicate.
- For substantial new features, propose the public contract and compatibility impact in an issue first.
- Use the relevant package repository's README and contribution instructions as the source of truth for its actual capabilities.
- Do not describe planned functionality as released.

## Development principles

1. **Goravel native first:** prefer official framework extension points, providers, middleware, ORM, migrations, cache, queues, events, and authorization facilities.
2. **Clear ownership:** document which files and data are package-managed, publishable, or application-owned.
3. **Compatibility:** state the supported Go and Goravel versions; test the compatibility matrix.
4. **Security:** treat tenant isolation, authorization, input parsing, secrets, and replay handling as explicit contracts.
5. **Evidence:** include focused tests and report integration, runtime, database, and browser checks separately.
6. **Changes should be reviewable:** keep focused commits, update docs, and add migration/upgrade notes when contracts change.

## Submitting a change

- Fork or branch from the package's default branch.
- Add or update tests for changed behavior, including failure paths and permission boundaries.
- Run the repository's documented formatting, static analysis, tests, and CI checks.
- Open a pull request explaining behavior, risk, breaking changes, and verification evidence.
- Avoid unrelated reformatting or dependency updates in feature pull requests.

## Code of conduct

Be respectful, constructive, and clear. Critique ideas and code rather than contributors. Maintainers may moderate abusive or disruptive activity.

## Releases

Releases should use meaningful version tags and changelogs. Breaking public API changes require explicit migration guidance. A passing CI workflow is necessary evidence, not proof of production suitability.

Gorazana is independent and is not endorsed by the Goravel maintainers.
