#!/usr/bin/env bash

__repoINdir2diff_self_stl0_FLOW() {

    if ! command -v repoINdir2diff_self_stl0 > /dev/null; then
        echo "TYPE_ERROR : repoINdir2diff_self_stl0" >&2
        return 1
    fi

    filename=${ST_RC_D_PATH}/.d/.arb/stl0.arb/repoINdir2diff_self_stl0.ram/.grot/_tst/_flow_tst.sh

    local PW=$(pwd)
    local idir="$(dirname ${filename})"

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    cd "${idir}" || {
        echo "${idir} not dir" >&2
        return 1
    }

    #?----------------------------------------------------
    #?-------------------------------------

    # : >res

    repoINdir2diff_self_stl0 "${HOME}/REPOBARE/_repo"

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        echo "${PW} not dir" >&2
        return 1
    }

}

__repoINdir2diff_self_stl0_FLOW "$@"
