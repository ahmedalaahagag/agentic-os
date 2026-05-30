# AGENTS.md

## Purpose

This repository coordinates AI-assisted product engineering work for multi-repo projects.

It stores plans, specs, tickets, handovers, verification notes, lessons, rules, and archived context.

It does not implement product code.

Product implementation lives in external execution repositories such as server, mobile, web, ops, infrastructure, or landing-page repos.

## Operating Rules

- Start by choosing the lane.
- Brainstorm before planning when the goal is unclear.
- Write plans before specs.
- Write specs before tickets.
- Keep tickets small, scoped, and verifiable.
- Use one ticket for one task.
- List exact files or surfaces to inspect first when known.
- Human ticket review is required before execution.
- Execution happens in the target implementation repository, not here.
- Start execution models from the target repository with a focused handover.
- Every handover must include verification steps.
- Every completed or stale artifact should be archived.
- Product decisions, releases, and final responsibility remain human-owned.

## Lanes

### product

Use for product value, scope, tradeoffs, requirements, and release shape.

### coding

Use for implementation planning, technical specs, executable tickets, and verification.

### ui-ux

Use for flows, screens, copy, usability, and product experience.

### marketing

Use for positioning, messaging, channels, and distribution.

### release

Use for rollout, release risk, checklists, and launch coordination.

## Verification

Every execution ticket should name the command or manual check that proves the work is done.

Prefer deterministic checks:

```text
format
vet
lint
test
```

## Archive Rule

Keep active folders small.

Move completed, superseded, stale, or abandoned artifacts into the lane archive.
