#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/path2nom2d_stl0.ram/.grot/path2nom2d_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

path2nom2d_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local hint=
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/path2nom2d_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/path2nom2d_stl0.ram/.grot/path2nom2d_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/path2nom2d_stl0.ram/.grot/path2nom2d_stl0.sh)

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: path2nom_stl0 for all files (with prev) in dir \$1
TAGS:
ARGS: 
\$1: dir for treat
[ ,\$2 num_menu ]
CNTL: 
    _go  : _edit ${d_name}/${FNN}.sh
    _tst :  . ${d_name}/_tst/exec.tst
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( return 1 | ... )
EXAM:
    ${FNN} 
${NORMAL}"
        return 0
    fi
    #{help_cntl_fn}

    if [[ "_go" == "$1" ]]; then
        _edit "${d_name}/${FNN}".sh
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        if [[ -f ${d_name}/_tst/exec.tst ]]; then
            . ${d_name}/_tst/exec.tst
        else
            echo "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/exec.tst' : ${hint} : return 1" >&2
            return 1
        fi
    fi

    hint="\$1: dir for treat"
    if _isn_from ${NARGS} 1 1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #[[ptr_path]]
    #! ptr_path
    local ptr_path="$1"
    ptr_path="$(_abs_path "${PPWD}" "ptr_path")"

    [ -d ${ptr_path} ] || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${ptr_path}' : ${hint} : return 1"
        return 1
    }

    local item=
    echo -e "${HLIGHT}--- _dfr2Ae ${ptr_path} ---${NORMAL}" #start files
    for item in $(_dfr2Ae ${ptr_path}); do
        echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        path2nom_stl0 $item
    done

    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
