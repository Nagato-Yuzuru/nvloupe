# nvloupe task runner. Tools (nextest, llvm-cov, prek, just) come from mise;
# rustc/cargo come from rustup via rust-toolchain.toml.
set shell := ["bash", "-euo", "pipefail", "-c"]

# List recipes.
default:
    @just --list

# Check formatting without changing files.
fmt-check:
    cargo fmt --all -- --check

# Lint; warnings are errors.
lint:
    cargo clippy --all-targets --all-features -- -D warnings

# Run the test suite. --no-tests=pass so an empty crate is green, not an error.
test:
    cargo nextest run --all-features --no-tests=pass

# Build and run the binary, passing through any arguments.
run *args:
    cargo run -- {{ args }}

# Coverage summary in the terminal.
cov:
    cargo llvm-cov nextest --all-features --no-tests=pass

# Coverage as lcov.info, for CI upload.
cov-lcov:
    cargo llvm-cov nextest --all-features --no-tests=pass --lcov --output-path lcov.info

# Install the git hooks (pre-commit + commit-msg stages). Run once after cloning.
install:
    prek install --hook-type pre-commit --hook-type commit-msg

# Run the git hooks against every file.
hooks:
    prek run --all-files

# What CI runs on every push.
ci: fmt-check lint test
