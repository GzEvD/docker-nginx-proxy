#!/usr/bin/env bash
set -o errexit
#set -x

__DIR__="$(cd "$(dirname "${0}")"; pwd)"

main() {
  cd "$__DIR__"
  docker-compose up -d
}

main "$@"
