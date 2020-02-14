#!/usr/bin/env bash

MSG="$1"

if ! grep -qE "^(build|chore|ci|docs|feat|fix|perf|refactor|revert|style|test)(\([a-z ]+\))?: [\w ]+$" "$MSG"; then
    cat "$MSG"
    echo "
Your commit message doesn't conform to Convential Commit Rules (https://www.conventionalcommits.org/).
At a minimum, your commit should start with one of the below keywords:

build: chore: ci: docs: feat: fix: perf: refactor: revert: style: test:

Example commit message to add a feature: 'feat: Changed something to add a lovely new feature'
Example commit message to fix an issue: 'fix: Removed infinite loop causing that annoying bug'
"
    exit 1
fi
