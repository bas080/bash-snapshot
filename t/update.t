#!/usr/bin/env bash

source <(./t/dependencies)

plan 1

tmp="$(mktemp)"

SNAPSHOT=1 snapshot <(date) "$tmp"
sleep 1
SNAPSHOT=1 snapshot <(date) "$tmp"
cmp <(date) "$tmp"
test_success "Snapshot does not equal file."
