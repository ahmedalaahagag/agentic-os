# Agentic OS

A lightweight repo template for AI-assisted product engineering.

Use lanes, plans, specs, tickets, handovers, verification, archives, and project memory to move from idea to shipped product without relying on one endless AI chat.

## Purpose

Agentic OS is not an automation framework.

It is a project operating system for working with AI while keeping engineering ownership clear.

It helps you:

- separate planning from execution
- give AI the right role through lanes
- keep context outside chat history
- create small, verifiable tickets
- hand work over cleanly to execution sessions
- verify changes deterministically
- preserve durable project memory
- archive completed or stale context

## Workflow

```text
Idea
-> Goal
-> Lane
-> Brainstorming
-> Plan
-> Plan Review
-> Specification
-> Specification Review
-> Ticket Decomposition
-> Human Ticket Review
-> Execution Handover
-> Execution Model Selection
-> Execution
-> Verification
-> AI Review
-> Human Review
-> Manual Merge
-> Memory Update
-> Archive Completed Context
-> Next Ticket
```

## Structure

```text
agentic-os/
  AGENTS.md
  README.md
  session-log.md

  lanes/
    product/
      plans/
      specs/
      tickets/
      archive/
    coding/
      plans/
      specs/
      tickets/
      archive/
    ui-ux/
      plans/
      specs/
      tickets/
      archive/
    marketing/
      plans/
      specs/
      tickets/
      archive/
    release/
      plans/
      specs/
      tickets/
      archive/

  handovers/
    archive/

  verification/
    scripts/
    reports/
    archive/

  lessons/
    lessons-learned.md
    rules.md

  templates/
    plan.md
    spec.md
    ticket.md
    handover.md
    verification.md
```

## Lanes

A lane gives the AI its working mode: role, priorities, tone, and expected output.

- `product` — user value, scope, tradeoffs, release shape
- `coding` — implementation, tests, maintainability, verification
- `ui-ux` — flows, screens, copy, usability
- `marketing` — positioning, messaging, distribution
- `release` — rollout, risk, checklists, launch coordination

## Core Rule

AI systems generate work.

Humans own decisions.

The final responsibility always belongs to the engineer.
