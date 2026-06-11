#!/usr/bin/env bash

__stl_00_nm_opi_FLOW() {

    local PW=$(pwd)

    if ! command -v stl_00_nm_opi >/dev/null; then
        l_00_echo_ret1 echo "TYPE_ERROR : stl_00_nm_opi"
        cd $PW
        return 1
    fi

    local filename=${STL_LIB_D_PATH}/001_lib.stl_00.arb/stl_00_nm_opi.ram/.grot/_tst/_flow_tst.sh

    local PW=$(pwd)
    local idir="$(dirname ${filename})"
    local tst_dir=${idir}/tst_dir
    local res=${idir}/res

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    cd "${idir}" || {
        l_00_echo_ret1 "${idir} not dir" 
        cd $PW
        return 1
    }

    #?----------------------------------------------------
    #?-------------------------------------

    l_00_echo_exec "source file://$filename"
    
    #! if stdout to ${res} only in this file - NOT in exec.tst
    : >"${res}"

    cd tst_dir || {
        hint="\$1: \$2: "
        l_00_echo_ret1 "in fs= file://${filename} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${idir}/_dir_tst' : ${hint} : return 1"
        return 1
    }

    # stl_00_nm_opi "${tst_dir}" &>>"${res}"

    #?-------------------------------------
    #?----------------------------------------------------

    cd "${PW}" || {
        l_00_echo_ret1 "${PW} not dir"
        return 1
    }

}

__stl_00_nm_opi_FLOW "$@"
