#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" cat /etc/os-release
check "clj" clj --version
check "uv" uv --version
check "R" R --version
check "lein" lein --version
check "check" pwd && ls -la
check "libpython-clj" uv sync --link-mode=copy && clj -Sdeps '{:deps {org.scicloj/noj {:mvn/version "2-beta18"}}}' -e '(require '\''[libpython-clj2.python :as py])(py/initialize!)(py/run-simple-string "print(1+1)")(shutdown-agents)' 
check "clojisr" clj -Sdeps '{:deps {org.scicloj/noj {:mvn/version "2-beta18"}}}' -e '(require '\''[clojisr.v1.r :refer [r]])(r '\''(+ 1 2))(shutdown-agents)'
check "pandas" uv sync && uv sync --link-mode=copy && clj  -Sdeps '{:deps {org.scicloj/noj {:mvn/version "2-beta18"}}}' -e '(require '\''[libpython-clj2.require :refer [require-python]])(require-python '\''[pandas :as pd])(shutdown-agents)'
# Report result
reportResults
