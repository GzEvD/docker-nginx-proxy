#!/usr/bin/env bash
set -o errexit
#set -x

__DIR__="$(cd "$(dirname "${0}")"; pwd)"

main() {
  cd "$__DIR__"
  docker network create proxy_front 2>/dev/null || true
  docker-compose up -d
}

main "$@"
