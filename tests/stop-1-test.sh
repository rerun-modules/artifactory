#!/usr/bin/env roundup
#
# This file contains the test plan for the `stop` command.
#    
#/ usage:  rerun stubbs:test -m artifactory -p stop [--answers <>]
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "stop"


it_works_without_options() {
   rerun artifactory:start
   rerun artifactory:stop
}

