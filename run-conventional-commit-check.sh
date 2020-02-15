#!/usr/bin/env bash

if ! grep -qE "^\bbuild\b|\bchore\b|\bci\b|\bdocs\b|\bfeat\b|\bfix\b|\bperf\b|\brefactor\b|\brevert\b|\bstyle\b|\btest\b(\([a-z ]+\)!)?: [\w ]+$" "$1"; then
    cat $1
    echo "
Your commit message doesn't conform to Convential Commit Rules (https://www.conventionalcommits.org/).
At a minimum, your commit should start with one of the below keywords:

build: chore: ci: docs: feat: fix: perf: refactor: revert: style: test:

Example commit message to add a feature: 'feat: Changed something to add a lovely new feature'
Example commit message to fix an issue: 'fix: Removed infinite loop causing that annoying bug'
"
    exit 1
fi
