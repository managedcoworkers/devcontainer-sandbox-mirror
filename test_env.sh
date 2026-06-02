#!/bin/bash

# Define required tools
tools=("python3" "node" "go" "java" "ruby" "php" "sqlite3" "psql" "redis-cli" "pnpm" "yarn" "mvn" "composer" "gcc")

echo "Running environment validation tests..."
failed=0

for tool in "${tools[@]}"; do
    if command -v "$tool" >/dev/null 2>&1; then
        echo "[PASS] $tool is installed."
    else
        echo "[FAIL] $tool is NOT installed."
        failed=1
    fi
done

# Rust specific check
export PATH="$HOME/.cargo/bin:$PATH"
if command -v rustc >/dev/null 2>&1; then
    echo "[PASS] rustc is installed."
else
    echo "[FAIL] rustc is NOT installed."
    failed=1
fi
