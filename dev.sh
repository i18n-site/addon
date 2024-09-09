#!/usr/bin/env bash

DIR=$(realpath ${0%/*})
cd $DIR

if [ -z "$1" ]; then
  echo "USAGE : $0 project_name"
  exit 1
fi
cd $1
shift
exec dev $@
