#!/usr/bin/env bash

function main {
  local shome="$(cd -P -- "${BASH_SOURCE%/*}/.." && pwd -P)"
}

main "$@"
