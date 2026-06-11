#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/doxy_stl0.ram/.grot/_mdeb/doxy_stl0_mdeb_NNN.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

doxy_stl0_mdeb_NNN() {
     if ! command -v doxy; then
        echo "TYPE_ERROR : doxy" >&2
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

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        echo "${PW} not dir" >&2
        return 1
    }
}

doxy_stl0_mdeb_NNN "$@"

cd "${idir}"
unset filename
#{post_fn}
