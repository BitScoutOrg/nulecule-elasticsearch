#!/bin/sh

set -x
set -o errexit
prefix=${PREFIX:-${1:-viaq/}}
version=${VERSION:-${2:-latest}}
docker build -t "${prefix}nulecule-elasticsearch:${version}" .

if [ -n "${PUSH:-$3}" ]; then
	docker push "${prefix}nulecule-elasticsearch:${version}"
fi
