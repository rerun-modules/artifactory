#!/usr/bin/env roundup
#
# This file contains the test plan for the `status` command.
#    
#/ usage:  rerun stubbs:test -m artifactory -p status [--answers <>]
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "status"

it_works_without_options() {
   rerun artifactory:start
   rerun artifactory:status
   rerun artifactory:stop
   rerun artifactory:status || return 0
}
