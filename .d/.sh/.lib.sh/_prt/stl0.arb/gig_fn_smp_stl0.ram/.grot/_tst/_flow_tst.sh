#!/usr/bin/env bash

__gig_fn_smp_stl0_FLOW() {

    if ! command -v gig_fn_smp_stl0 >/dev/null; then
        echo "TYPE_ERROR : gig_fn_smp_stl0" >&2
        return 1
    fi

    filename=${ST_RC_D_PATH}/.d/.arb/stl0.arb/gig_fn_smp_stl0.ram/.grot/_tst/_flow_tst.sh

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

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        echo "${PW} not dir" >&2
        return 1
    }

}

__gig_fn_smp_stl0_FLOW "$@"
