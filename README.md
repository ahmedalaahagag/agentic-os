# Agentic OS

A lightweight operational template for AI-assisted product engineering.

Agentic OS is the working repo structure for applying the Product Engineer Handbook workflow.

Use lanes, plans, specs, tickets, handovers, verification, archives, and project memory to move from idea to shipped product without relying on one endless AI chat.

For the reasoning behind this workflow, read the Product Engineer Handbook.

## What This Is

Agentic OS is not an automation framework.

It is a copyable project operating structure for working with AI while keeping engineering ownership clear.

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
    initiative.md
    plan.md
    spec.md
    ticket.md
    handover.md
    review.md
    verification.md
    lessons-learned.md
```

## Lanes

A lane gives the AI its working mode: role, priorities, tone, and expected output.

- `product` — user value, scope, tradeoffs, release shape
- `coding` — implementation, tests, maintainability, verification
- `ui-ux` — flows, screens, copy, usability
- `marketing` — positioning, messaging, distribution
- `release` — rollout, risk, checklists, launch coordination

## How To Use

1. Pick the lane.
2. Create a plan or spec from the templates.
3. Decompose into small tickets.
4. Review the ticket as a human before execution.
5. Create a focused handover for the execution session.
6. Execute in the implementation repository.
7. Verify with deterministic checks.
8. Record lessons and archive completed context.

## Core Rule

AI systems generate work.

Humans own decisions.

The final responsibility always belongs to the engineer.
