#!/bin/bash -xe

clj -Sthreads 1 -P
mkdir -p .venv 
poetry install
tic -x .devcontainer/terminfo24bit.src
echo "alias emacs='TERM=xterm-24bits emacs'" >> ~/.bashrc
