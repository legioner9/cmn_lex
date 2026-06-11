#!/usr/bin/env bash

__arb2f_stl0_FLOW() {

    if ! command -v arb2f_stl0 >/dev/null; then
        echo "TYPE_ERROR : arb2f_stl0" >&2
        return 1
    fi

    filename=${ST_RC_D_PATH}/.d/.arb/stl0.arb/arb2f_stl0.ram/.grot/_tst/_flow_tst.sh

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

    : >"${idir}"/res
    cd _dir_tst || _st_exit "NOT_DIR _dir_tst"

    rm ptr_path.file
    cp ptr_path_init.file ptr_path.file

    arb2f_stl0 ptr_path.file

    cat ptr_path.file >"${idir}"/res
    echo >>"${idir}"/res
    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        echo "${PW} not dir" >&2
        return 1
    }

}

__arb2f_stl0_FLOW "$@"
