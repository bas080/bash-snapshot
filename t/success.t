#!/usr/bin/env bash

source <(./t/dependencies)

plan 1

snapshot ./t/success.t ./t/snapshot/t-files.snapshot
test_success "Snapshot equals file."
