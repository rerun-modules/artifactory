#!/usr/bin/env roundup
#
# This file contains the test plan for the `configure` command.
#    
#/ usage:  rerun stubbs:test -m artifactory -p configure [--answers <>]
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "configure"

it_works_without_options() {
   rerun artifactory:configure
   rerun artifactory:start
   rerun artifactory:stop
}
