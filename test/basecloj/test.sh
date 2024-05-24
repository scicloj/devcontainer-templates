#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -a
check "java_jdk" java --version
check "clojure" clojure --version
check "clj" clj --version
check "user" id

# Report result
reportResults
