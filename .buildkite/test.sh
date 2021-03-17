#!/bin/bash

if [ $$(buildkite-agent step get "outcome" --step "one") == "hard_failed" ]; then
  buildkite-agent annotate 'this build failed' --style 'error'
fi
