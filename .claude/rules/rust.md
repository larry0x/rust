---
paths:
  - "**/*.rs"
---

# Rust Guidelines

Rust 2024 edition. Write idiomatic, Rustacean code. Prioritize clarity, modularity, and zero-cost abstractions.

## Workspace Dependencies

The root `Cargo.toml` `[workspace.dependencies]` is the single source of truth for all dependency version. In individual crates, reference with `{ workspace = true }`. Never add versions directly in a crate's `Cargo.toml`.
Prefer latest stable crates.io version.

Run `cargo fetch` after dependency changes, verify with `cargo fetch --locked`.
