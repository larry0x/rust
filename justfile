set positional-arguments

# List available recipes
default:
  @just --list

# Run rustfmt
fmt:
  cargo +nightly fmt --all

# Check whether the code compiles
check:
  cargo check --bins --tests --benches --examples --all-features --all-targets

# Run clippy
lint:
  cargo clippy --bins --tests --benches --examples --all-features --all-targets -- -D warnings

# Run clippy but with `--no-default-features` enabled for each crate
lint-without-features:
  #!/usr/bin/env bash
  set -euo pipefail
  crates=($(cargo metadata --format-version=1 --no-deps | jq -r '.packages[].name'))
  total=${#crates[@]}
  for i in "${!crates[@]}"; do
    crate="${crates[$i]}"
    echo "[$((i+1))/$total] Checking $crate..."
    cargo clippy -p "$crate" --bins --tests --benches --examples --no-default-features --all-targets -- -D warnings
  done

# Run tests
test:
  RUST_BACKTRACE=1 cargo test --all-features --tests -- --nocapture

# Run doctests
test-doc:
  RUST_BACKTRACE=1 cargo test --all-features --doc

# Build documentation
book:
  mdbook build --open
