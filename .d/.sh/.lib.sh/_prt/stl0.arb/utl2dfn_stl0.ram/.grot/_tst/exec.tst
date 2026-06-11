#!/bin/bash

__utl2dfn_stl0_TST() {

    if ! command -v utl2dfn_stl0 >/dev/null; then
        echo "TYPE_ERROR : utl2dfn_stl0" >&2
        return 1
    fi

    local filename=${ST_RC_D_PATH}/.d/.arb/stl0.arb/utl2dfn_stl0.ram/.grot/_tst/exec._tst

    local idir=$(pwd)

    # cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

    local dir=$(_prs_f -d "$filename")

    cd "${dir}" || {
        echo "${dir} not dir" >&2
        return 1
    }

    . "$dir"/_flow_tst.sh &>/dev/null

    # . "$dir"/_flow_tst.sh &>res

    #? if res, pre dirs -> diff -qr | diff -r

    local flag=1
    if ! diff -q "$dir"/pre "$dir"/res >/dev/null; then
        flag=0
    fi

    if [ 0 -eq "$flag" ]; then
        echo "ANY in file://$dir fail" >&2
        diff "$dir"/pre "$dir"/res >&2

        cd "$idir"
        return 1
    else
        echo "ALL in file://$dir true"

        cd "$idir"
        return 0
    fi

    cd "$idir"

}

if ! __utl2dfn_stl0_TST "$@"; then
    _st_exit "in fs= file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/utl2dfn_stl0.ram/.grot/_tst/exec._tst , line=${LINENO}: : EXEC_FAIL : '__utl2dfn_stl0_TST ' : ${hint} : return 1"
    return 1
fi
