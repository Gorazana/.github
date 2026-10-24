#!/usr/bin/env bash
set -euo pipefail
# Requires: gh CLI, jq optional; an authenticated account with org repository-creation rights.
ORG="gorazana"
MODE="${1:---plan}"
names=(
  modules admin settings features
  activitylog audit licensing
  notifications workflows scheduler localization webhooks api
  media documents search import-export backup sync
  billing integrations ai observability
)
if [[ "$MODE" != "--plan" && "$MODE" != "--apply" ]]; then
  echo "Usage: $0 [--plan|--apply]" >&2; exit 2
fi
if [[ "$MODE" == "--apply" ]]; then
  command -v gh >/dev/null || { echo "Install GitHub CLI first." >&2; exit 1; }
  gh auth status >/dev/null || { echo "Run gh auth login first." >&2; exit 1; }
  echo "Creating EMPTY PRIVATE repositories under $ORG. No source or CI is transferred."
fi
for name in "${names[@]}"; do
  if [[ "$MODE" == "--plan" ]]; then echo "PLAN: $ORG/$name (private, empty)"; continue; fi
  if gh repo view "$ORG/$name" >/dev/null 2>&1; then
    echo "EXISTS: $ORG/$name"; continue
  fi
  gh repo create "$ORG/$name" --private --description "Planned Gorazana package: $name (not yet released)" || exit 1
  gh api -X PUT "repos/$ORG/$name/topics" -f 'names[]=goravel' -f 'names[]=golang' -f 'names[]=gorazana' >/dev/null || echo "WARNING: topics need review for $name" >&2
  echo "CREATED: $ORG/$name"
done
echo "Skeleton has been transferred to gorazana/package-skeleton. Complete its acceptance gates before initializing new packages."
echo "Defender and Tenancy are deliberately excluded."
