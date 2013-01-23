# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Wed Jan 23 20:55:20 UTC 2013
#
#/ usage: artifactory:upload-artifact [ --repo-url <http://artifactory.dev4.rms.com:8081/artifactory>]  --repo-id <>  --group-id <>  --artifact-id <>  --artifact-version <>  --artifact-format <>  --artifact-file <>  --repo-username <>  --repo-password <> 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --repo-url) rerun_option_check $# $1; REPO_URL=$2 ; shift ;;
            --repo-id) rerun_option_check $# $1; REPO_ID=$2 ; shift ;;
            --group-id) rerun_option_check $# $1; GROUP_ID=$2 ; shift ;;
            --artifact-id) rerun_option_check $# $1; ARTIFACT_ID=$2 ; shift ;;
            --artifact-version) rerun_option_check $# $1; ARTIFACT_VERSION=$2 ; shift ;;
            --artifact-format) rerun_option_check $# $1; ARTIFACT_FORMAT=$2 ; shift ;;
            --artifact-file) rerun_option_check $# $1; ARTIFACT_FILE=$2 ; shift ;;
            --repo-username) rerun_option_check $# $1; REPO_USERNAME=$2 ; shift ;;
            --repo-password) rerun_option_check $# $1; REPO_PASSWORD=$2 ; shift ;;
            # help option
            -?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [ -z "$REPO_URL" ] && REPO_URL="$(rerun_property_get $RERUN_MODULE_DIR/options/repo-url DEFAULT)"
    # Check required options are set
    [ -z "$REPO_ID" ] && { echo >&2 "missing required option: --repo-id" ; return 2 ; }
    [ -z "$GROUP_ID" ] && { echo >&2 "missing required option: --group-id" ; return 2 ; }
    [ -z "$ARTIFACT_ID" ] && { echo >&2 "missing required option: --artifact-id" ; return 2 ; }
    [ -z "$ARTIFACT_VERSION" ] && { echo >&2 "missing required option: --artifact-version" ; return 2 ; }
    [ -z "$ARTIFACT_FORMAT" ] && { echo >&2 "missing required option: --artifact-format" ; return 2 ; }
    [ -z "$ARTIFACT_FILE" ] && { echo >&2 "missing required option: --artifact-file" ; return 2 ; }
    [ -z "$REPO_USERNAME" ] && { echo >&2 "missing required option: --repo-username" ; return 2 ; }
    [ -z "$REPO_PASSWORD" ] && { echo >&2 "missing required option: --repo-password" ; return 2 ; }
    # If option variables are declared exportable, export them.

    #
    return 0
}


# Initialize the options variables to null.
REPO_URL=
REPO_ID=
GROUP_ID=
ARTIFACT_ID=
ARTIFACT_VERSION=
ARTIFACT_FORMAT=
ARTIFACT_FILE=
REPO_USERNAME=
REPO_PASSWORD=


