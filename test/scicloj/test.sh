#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
#check "color" [ $(cat /tmp/color.txt | grep red) ]
#check "libpython-clj" clj -e "(require '[libpython-clj2.python :refer [py. py.. py.-] :as py])(py/initialize!)(py/run-simple-string \"print(1+1)\")"
#check "clojisr" clj -e "(require '[clojisr.v1.r :refer [r]])(r '(+ 1 2))"
#check "pandas" clj -e "(require '[libpython-clj2.require :refer [require-python]])(require-python '[pandas :as pd])"
check "clj" clj --version
check "poetry" poetry --version
check "bb" bb --version
check "R" R --version
check "emacs" emacs --version
check "lein" lein --version


# Report result
reportResults
