#!/bin/bash -xe

clj -Sthreads 1 -P
mkdir -p .venv 
poetry install
tic -x .devcontainer/terminfo24bit.src
export TERM=xterm-24bits
