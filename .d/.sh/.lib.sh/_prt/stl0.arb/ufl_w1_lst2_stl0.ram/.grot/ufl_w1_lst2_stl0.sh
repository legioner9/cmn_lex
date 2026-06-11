#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_w1_lst2_stl0.ram/.grot/ufl_w1_lst2_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

ufl_w1_lst2_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local hint=
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ufl_w1_lst2_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_w1_lst2_stl0.ram/.grot/ufl_w1_lst2_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_w1_lst2_stl0.ram/.grot/ufl_w1_lst2_stl0.sh)

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: wrap [ufl_stl0 4]  as \$1 file.lst dir to \$2 file.md 
TAGS:
ARGS: 
\$1
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
            return 0
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

    hint="wrap [ufl_stl0 4]  as \$1 file.lst dir to \$2 file.md "
    if _isn_from ${NARGS} 2 2 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '2' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #[[ptr_path]]
    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    local ptr_path_2="$2"
    ptr_path_2="$(_abs_path "${PPWD}" "ptr_path_2")"

    [ -f ${ptr_path_1} ] || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${ptr_path_1}' : ${hint} : return 1"
        return 1
    }

    [ -f ${ptr_path_2} ] || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${ptr_path_2}' : ${hint} : return 1"
        return 1
    }

    local item=

    echo -e "
{{recive_ufl_4}}
" >${ptr_path_2}

    for item in $(_f2e ${ptr_path_1}); do
        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        ufl_stl0 4 ${item} ${ptr_path_2}.curr
        _f2f ${ptr_path_2}.curr "{{recive_ufl_4}}" ${ptr_path_2}
    done

    rm ${ptr_path_2}.curr
    rm ${ptr_path_2}.curr_ufl4

    ufl_stl0 1 ${ptr_path_2}_ufl4w1lst2

    echo -e "
    ufl_w1_lst2_stl0 ${ptr_path_1} ${ptr_path_2}
    " >${ptr_path_2}_ufl4w1lst2.tmp

    _f2f ${ptr_path_2}_ufl4w1lst2.tmp {{body_fn}} ${ptr_path_2}_ufl4w1lst2

    path2nom_stl0 ${ptr_path_2}_ufl4w1lst2

    rm ${ptr_path_2}_ufl4w1lst2.tmp

    _edit ${ptr_path_2}

    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
