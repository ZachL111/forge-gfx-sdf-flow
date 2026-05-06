# Field Notes

This note keeps the graphics assumptions visible beside the checks.

The domain cases cover `geometry span`, `atlas pressure`, `shader drift`, and `render budget`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

The widest spread is between `render budget` and `geometry span`, so those are the first two cases I would preserve during a refactor.

The extra check gives the repository a behavior path that can fail for a domain reason, not only a syntax reason.
