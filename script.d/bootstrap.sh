#!/usr/bin/env bash
ROOT=$(pwd)

if [ ! -d $ROOT/app/node_modules ]; then
    cd $ROOT/app && npm install
fi
