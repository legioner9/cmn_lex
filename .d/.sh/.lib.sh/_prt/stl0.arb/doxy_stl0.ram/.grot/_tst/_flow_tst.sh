#!/usr/bin/env bash

__doxy_stl0_FLOW() {

    if ! command -v doxy_stl0 >/dev/null; then
        echo "TYPE_ERROR : doxy_stl0" >&2
        return 1
    fi

    filename=${ST_RC_D_PATH}/.d/.arb/stl0.arb/doxy_stl0.ram/.grot/_tst/_flow_tst.sh

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

    # rm -r _dir_tst/1.doxy
    # mkdir _dir_tst/1.doxy

    doxy_stl0 _dir_tst/1.ossa _dir_tst/1.doxy 2
    yandex-browser ${idir}/_dir_tst/1.doxy/.doxy/html/index.html

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        echo "${PW} not dir" >&2
        return 1
    }

}

__doxy_stl0_FLOW "$@"
