#!/usr/bin/env roundup
#
# This file contains the test plan for the `restart` command.
#    
#/ usage:  rerun stubbs:test -m artifactory -p restart [--answers <>]
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "restart"


it_works_without_options() {
   rerun artifactory:start
   rerun artifactory:restart
   rerun artifactory:stop
}

