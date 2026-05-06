# Forge Gfx Sdf Flow Walkthrough

I use this file as a small checklist before changing the Dart implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | geometry span | 143 | ship |
| stress | atlas pressure | 188 | ship |
| edge | shader drift | 173 | ship |
| recovery | render budget | 192 | ship |
| stale | geometry span | 107 | watch |

Start with `recovery` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around atlas pressure and render budget.
