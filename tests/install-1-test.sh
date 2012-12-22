#!/usr/bin/env roundup
#
# This file contains the test plan for the `install` command.
#    
#/ usage:  rerun stubbs:test -m artifactory -p install [--answers <>]
#

# Helpers
#
[[ -f ./functions.sh ]] && . ./functions.sh

# The Plan
# --------

describe "install"


it_works_without_options() {
   rerun artifactory:install
}
