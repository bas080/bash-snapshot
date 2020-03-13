#!/usr/bin/env bash

source <(./t/dependencies)

plan 2

tmp="$(mktemp -u)"

snapshot ./bash-snapshot "$tmp" 2>&1 | diagnostics
test_failure "Snapshot file does not exist."

snapshot ./bash-snapshot ./t/snapshot/t-files.snapshot 2>&1 | diagnostics
test_failure "Snapshot does not equal file."
