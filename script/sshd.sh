#!/usr/bin/env bash

function main {
  local shome="${_basebox_osx_home:-"$(cd -P -- "${BASH_SOURCE%/*}/.." && pwd -P)"}"
}

main "$@"
