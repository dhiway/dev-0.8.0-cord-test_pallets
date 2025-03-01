#!/usr/bin/env bash
set -e

echo "*** Initializing WASM build environment"

rustup default stable
rustup update stable
rustup update nightly

rustup target add wasm32-unknown-unknown --toolchain nightly

# Install wasm-gc. It's useful for stripping slimming down wasm binaries.
command -v wasm-gc || \
	cargo +nightly install --git https://github.com/alexcrichton/wasm-gc --force