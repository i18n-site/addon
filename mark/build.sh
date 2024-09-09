#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

cd src

fd .js -t f | xargs -I {} bun x esbuild {} --bundle --outfile=../lib/{} --format=esm --platform=node --bundle --sourcemap
