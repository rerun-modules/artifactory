#!/usr/bin/env roundup
#
# This file contains the test plan for the `start` command.
#    
#/ usage:  rerun stubbs:test -m artifactory -p start [--answers <>]
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "start"


it_works_without_options() {
   rerun artifactory:start
   rerun artifactory:stop
}
