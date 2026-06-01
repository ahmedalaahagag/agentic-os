<img width="1935" height="813" alt="86y6wlsn6o5zlmihgp99" src="https://github.com/user-attachments/assets/dca40438-fa4b-4b84-8516-714b4bd72707" />

## Motivation

- [Smarter Models Made My Workflow Stricter, Not Looser](docs/articles/smarter-models-made-my-workflow-stricter.md)

# Agentic OS

A lightweight operational template for AI-assisted product engineering.

Agentic OS is the working repo structure for applying the [Product Engineer Handbook](https://github.com/ahmedalaahagag/product-engineer-handbook) workflow.

It is mainly designed for multi-repo products where planning, product decisions, execution, verification, and project memory need to stay coordinated without turning one AI chat into the source of truth.

Use lanes, plans, specs, tickets, handovers, verification, archives, and project memory to move from idea to shipped product without relying on one endless AI chat.

For the reasoning behind this workflow, read the [Product Engineer Handbook](https://github.com/ahmedalaahagag/product-engineer-handbook).

## Quick Start

1. Copy this repository as your product meta repo.
2. Keep your implementation repositories beside it.
3. Pick the right lane for the work.
4. Write a plan or specification.
5. Decompose the work into small tickets.
6. Create a focused handover for one ticket.
7. Open the target implementation repository.
8. Start the execution model from that repo with the handover.
9. Verify the result and review it manually before merging.

Example workspace:

```text
workspace/
  product-meta/       # Agentic OS copy: planning, tickets, handovers, memory
  product-server/     # backend implementation
  product-mobile/     # mobile implementation
  product-web/        # web app, landing page, or marketing site
```

## Companion Handbook

This repository gives you the operational template.

The [Product Engineer Handbook](https://github.com/ahmedalaahagag/product-engineer-handbook) explains the reasoning, rules, tradeoffs, and delivery model behind it.

Use Agentic OS when you want the copyable repo structure.

Use the handbook when you want to understand why the structure exists and how to operate it well.

## Why This Exists

Agentic OS came out of experimenting with multi-agent, multi-repo, subagent-driven development.

The models were capable, but the workflow needed stronger operational boundaries.

Without structure, agentic work can drift into broad repo exploration, growing context, unclear ownership, and expensive execution.

Agentic OS gives the engineer a control layer:

- planning happens in the meta repo
- execution happens in the target implementation repo
- one ticket equals one task
- exact files are named before execution
- handovers bound the context
- verification proves the result
- humans own review and merge

Dynamic workflows make this more important, not less.

More autonomous agents need clearer inputs, stronger boundaries, and better verification.

## What This Is

Agentic OS is not an automation framework.

It is a copyable project operating structure for working with AI while keeping engineering ownership clear.

It helps you:

- coordinate multi-repo product work
- separate planning from execution
- give AI the right role through lanes
- keep context outside chat history
- create small, verifiable tickets
- hand work over cleanly to execution sessions
- verify changes deterministically
- preserve durable project memory
- archive completed or stale context

## Meta Repo vs Execution Repos

Agentic OS is the meta repository.

It stores planning artifacts, tickets, handovers, verification notes, lessons, and project memory.

It does not contain the product implementation.

Execution repositories live outside the meta repo, for example:

```text
../product-server/
../product-mobile/
../product-web/
```

Planning and review can happen in the meta repo.

Execution starts from the implementation repo.

A cheaper or coding-focused execution model should be opened inside the target execution repo with a focused handover from Agentic OS. It should not start from the meta repo and scan everything.

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
-> Execution in target repo
-> Verification
-> AI Review
-> Human Review
-> Manual Merge
-> Memory Update
-> Archive Completed Context
-> Next Ticket
```

## Structure

A typical workspace keeps Agentic OS beside the implementation repositories.

This is most useful when a product spans multiple repos such as backend, mobile, web, infrastructure, or landing pages.

```text
workspace/
  agentic-os/                 # meta repo: planning, tickets, handovers, memory
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

  product-server/             # execution repo: backend implementation
  product-mobile/             # execution repo: mobile implementation
  product-web/                # execution repo: web app, landing page, or marketing site
```

Execution sessions should start from one of the implementation repositories, not from `agentic-os/`.

The handover from `agentic-os/` tells the execution model what to do, which files to inspect first, and how to verify the work.

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
6. Open the target implementation repo.
7. Start the execution model from that repo with the handover.
8. Verify with deterministic checks.
9. Record lessons and archive completed context.

## Core Rule

AI systems generate work.

Humans own decisions.

The final responsibility always belongs to the engineer.
