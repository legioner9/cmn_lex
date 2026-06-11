#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/mm_start_stl0.ram/.grot/mm_start_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

mm_start_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local hint=
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/mm_start_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/mm_start_stl0.ram/.grot/mm_start_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/mm_start_stl0.ram/.grot/mm_start_stl0.sh)
    local dir_fn_data=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/mm_start_stl0

    echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: eval \$res_menu
TAGS:
ARGS: 
\$1
[ ,\$2 num_menu ]
CNTL: 
    _data_e : _edit ${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/mm_start_stl0
    _go     : _edit ${d_name}/${FNN}.sh
    _tst    : . ${d_name}/_tst/exec.tst
    _flow_1 : . ${d_name}/_tst/_flow_tst.sh.v1
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

    if [[ "_data_e" == "$1" ]]; then
        _edit ${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/mm_start_stl0
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

    if [[ "_flow_1" == "$1" ]]; then
        if [[ -f ${d_name}/_tst/_flow_tst.sh.v1 ]]; then
            . ${d_name}/_tst/_flow_tst.sh.v1
            return 0
        else
            echo "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/_flow_tst.sh.v1' : ${hint} : return 1" >&2
            return 1
        fi
    fi

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS MORE "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'NNNN' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #[[ptr_path]]
    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(_abs_path "${PPWD}" "ptr_path")"

    # local dir_fn_data=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/mm_start_stl0

    echo -e "${GREEN}\$dir_fn_data = file://$dir_fn_data${NORMAL}" #print variable

    local _arr_name=()
    local _arr_res=()
    local _result=

    . ${dir_fn_data}/.prc/arrays.prc || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '. file://${dir_fn_data}/.proc/arrays.proc' : ${hint} : return 1"
        return 1
    }

    # _arr_name+=("echo XXX")
    # _arr_res+=("echo XXX")
    # _arr_name+=("cd ${HOME}/tp_1; yt_dlp_stl0 2 &")
    # _arr_res+=("cd ${HOME}/tp_1; yt_dlp_stl0 2 &")
    # # _arr_name+=("nnnnnn")
    # # _arr_res+=("rrrrr")
    # # _arr_name+=("nnnnnn")
    # # _arr_res+=("rrrrr")
    # # _arr_name+=("nnnnnn")
    # # _arr_res+=("rrrrr")
    # # _arr_name+=("nnnnnn")
    # # _arr_res+=("rrrrr")
    # # _arr_name+=("nnnnnn")
    # # _arr_res+=("rrrrr")

    _nr2mm _arr_name _arr_res _result "$1"

    echo -e "${GREEN}\$_result = $_result${NORMAL}" #print variable

    local path_rnd_="${TMP_DIR_ST_RC}/mm_start_stl0_$(_rnd2e).f"

    echo "${_result}" >${path_rnd_}

    . ${path_rnd_} || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : '. ${path_rnd_}' : ${hint} : return 1"
        return 1
    }

    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
