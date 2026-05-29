#!/usr/bin/env bash
set -euo pipefail

echo "Running deterministic verification..."

# Replace these commands with the commands for your implementation repository.

echo "1. Format"
# gofmt -w .
# npm run format:check

echo "2. Vet"
# go vet ./...

echo "3. Lint"
# golangci-lint run
# npm run lint

echo "4. Test"
# go test ./...
# npm test

echo "Verification complete."
