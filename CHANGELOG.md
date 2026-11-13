# Changelog

## v2.0.1 — 2026-11-13

- Add explicit HashiCorp local (>= 2.5.0, < 3.0.0) and null (>= 3.2.0, < 4.0.0) provider constraints.
- Align declared local provider constraints in training examples.
- Patch release: no changes to module inputs, outputs, or resource addresses.

## v2.0.0 — 2026-11-12

- BREAKING: require OCI provider >= 9.12.1, < 10.0.0 and OpenTofu >= 1.11.0.
- Preserve previous local module/example work in separate commits.
- Update embedded examples and dependency pins; add plan-only mocked test coverage.
- Preserve the module input/output contract and resource addresses.
