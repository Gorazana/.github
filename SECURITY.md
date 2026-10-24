# Security policy

Gorazana packages may be incorporated into security-sensitive applications. Responsible vulnerability reporting is welcome.

## Reporting a vulnerability

**Please do not disclose an exploitable vulnerability in a public issue or pull request.**

For a package with GitHub private vulnerability reporting enabled, use **Security → Advisories → Report a vulnerability** in that package repository. If this option is not available, contact a repository maintainer privately through an established contact channel; do not publish exploit details while seeking a channel. No public email address or response SLA is implied by this document.

Include the affected package, versions or commits, impact, reproducible steps, and a minimal proof of concept where safe.

## Scope and support

Each package's own SECURITY.md and release documentation define its maintained versions, remediation policy, and security boundaries. An unreleased or roadmap-only repository does not imply a supported release.

## Security engineering expectations

- Use Goravel's native authorization and validation mechanisms where appropriate.
- Test privilege and tenant boundaries, replay behavior, malformed inputs, logging, and unsafe defaults.
- Avoid committing secrets, production data, or sensitive incident artifacts.
- Keep dependencies reviewed and security-relevant checks visible in CI.
- Document residual limitations and environment-specific verification gaps.

This document is a baseline policy, not a certification or guarantee.
