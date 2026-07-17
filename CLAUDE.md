# rust

This is a template repository for multi-crate Rust projects.

## Build & test

Use `just` recipes:

- `just fmt`
- `just lint` + `just lint-without-features`
- `just test` + `just test-doc`

## Regarding testing

Design test cases based on the _spec_, not the code. Expected outcomes derived from the code ("what would the code produce?") inherit the code's bugs, so tests pass without uncovering them. Ask instead: "what _should_ the outcome be, per the intention and spirit of the spec?"

## Regarding git

- Commit messages should follow [Conventional Commits](https://www.conventionalcommits.org/): `type(scope): description`. Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`.

- PR descriptions must include:
  - `## Summary` (what changed and why)
  - `## Validation` with checkboxes (`### Completed` / `### Remaining`)
  - `## Manual QA` (steps or "None")

- Never overwrite existing tags; always create a new version.
- When resolving merge conflicts, keep both – integrate, don't discard.
- `Cargo.lock` sync: run `cargo fetch` after merging main, verify with `cargo fetch --locked`.
