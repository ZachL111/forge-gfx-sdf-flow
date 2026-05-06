# forge-gfx-sdf-flow

`forge-gfx-sdf-flow` explores graphics with a small Dart codebase and local fixtures. The technical goal is to design a Dart verification harness for sdf systems, covering visual model generation, layout fixtures, and failure-oriented tests.

## Reason For The Project

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how geometry span and shader drift should influence a review result.

## Forge Gfx Sdf Flow Review Notes

For a quick review, compare `render budget` with `geometry span` before reading the middle cases.

## What It Does

- `fixtures/domain_review.csv` adds cases for geometry span and atlas pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/forge-gfx-sdf-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `render budget` and `geometry span`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Dart addition stays small enough to inspect in one sitting.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Boundaries

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
