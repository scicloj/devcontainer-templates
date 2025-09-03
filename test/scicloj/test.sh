#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "clj" clj --version
check "uv" uv --version
check "R" R --version
check "lein" lein --version
check "check" pwd && ls -la
check "libpython-clj" uv sync && clj -Sdeps '{:deps {org.scicloj/noj {:mvn/version "2-beta18"}}}' -e '(require '\''[libpython-clj2.python :refer [py. py.. py.-] :as py])(py/initialize!)(py/run-simple-string "print(1+1)")(shutdown-agents)' 
#check "libpython-clj" clj -e '(require '\''[libpython-clj2.python :refer [py. py.. py.-] :as py])(py/initialize!)(py/run-simple-string "print(1+1)")'
#check "clojisr" clj -e '(require '\''[clojisr.v1.r :refer [r]])(r '\''(+ 1 2))(shutdown-agents)'
#check "pandas" uv sync && clj -e '(require '\''[libpython-clj2.require :refer [require-python]])(require-python '\''[pandas :as pd])'
# Report result
reportResults
