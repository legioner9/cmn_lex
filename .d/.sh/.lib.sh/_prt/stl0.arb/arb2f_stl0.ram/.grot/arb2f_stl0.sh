#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/arb2f_stl0.ram/.grot/arb2f_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

arb2f_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local hint=
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/arb2f_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/arb2f_stl0.ram/.grot/arb2f_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/arb2f_stl0.ram/.grot/arb2f_stl0.sh)

    echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: \$1: recive file [, \$2 lst_arb (if \$2='' dflt lst_arb=\${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/arb2f_stl0/mitt_arb.lst )]
TAGS:
ARGS: \$1: recive file (if \$1=@ _edit dflt lst_arb) [, \$2 lst_arb (\$2='' dflt lst_arb=\${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/arb2f_stl0/mitt_arb.lst )])
\$1: recive file (if \$1=@ _edit dflt lst_arb)
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

    local lst_mitt

    if [ -z "$2" ]; then
        lst_mitt=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/arb2f_stl0/mitt_arb.lst
    else
        lst_mitt=$2
    fi

    if [ "@" == "$1" ];then
        _edit "${lst_mitt}"
        return 0
    fi

    if [ -z "$1" ]; then
        larb2e_stl0 ${lst_mitt}
        return 0
    fi

    hint="\$1: recive file"
    if _isn_from ${NARGS} 1 2 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1..2' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #! ptr_path
    local ptr_path="$1"
    ptr_path="$(_abs_path "${PPWD}" "ptr_path")"
    #[[ptr_path]]

    [ -f ${ptr_path} ] || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${ptr_path}' : ${hint} : return 1"
        return 1
    }

    local item=
    local item2=
    local file_cont=
    local recive_name=

    for item in $(_f2e $lst_mitt); do
        if [ -d $item ]; then
            for item2 in $(_dd2e $item ram); do
                recive_name=$(_prs_f -n "$item2")
                file_cont=$item/$item2/cont.fol
                (cat ${ptr_path} | grep "{{${recive_name}}" >/dev/null) && {
                    echo "${recive_name} insert to ${ptr_path}"
                    _f2f ${file_cont} "{{${recive_name}}" ${ptr_path}
                    _s2f "{{${recive_name}}}" "[[${recive_name}]]" ${ptr_path}
                }
            done
        else
            hint="dir from $lst_mitt"
            _st_info "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://$item' : ${hint}"
        fi
    done
    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
