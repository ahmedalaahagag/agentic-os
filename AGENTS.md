# AGENTS.md

## Purpose

This repository coordinates AI-assisted product engineering work.

It stores plans, specs, tickets, handovers, verification notes, lessons, rules, and archived context.

It does not implement product code.

## Operating Rules

- Start by choosing the lane.
- Brainstorm before planning when the goal is unclear.
- Write plans before specs.
- Write specs before tickets.
- Keep tickets small, scoped, and verifiable.
- Human ticket review is required before execution.
- Execution happens in the implementation repository, not here.
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
