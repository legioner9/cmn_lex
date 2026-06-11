#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/ch2shld_stl0.ram/.grot/ch2shld_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

ch2shld_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local hint=
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ch2shld_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/ch2shld_stl0.ram/.grot/ch2shld_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/ch2shld_stl0.ram/.grot/ch2shld_stl0.sh)

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: shield flow from dir with char.lst
TAGS:
ARGS: 
\$1 0 or num menu shield flow from dir with char.lst
\$2 string
CNTL: 
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

    # local dir_fn_data=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ch2shld_stl0/ch.lst
    # echo -e "${GREEN}\$dir_fn_data = file://$dir_fn_data${NORMAL}"
    local dir_fn_data=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ch2shld_stl0
    local dir_lst=${dir_fn_data}/ch.lst

    local _result_=''
    _d2mm ${dir_lst} _result_ ${ARGS[0]} >/dev/null

    # echo -e "${GREEN}\$_result_ = $_result_${NORMAL}" #print variable

    # cat $_result_

    local ARGS1=${ARGS[1]}
    # ARGS1=$(sp2unsc_stl0 "${ARGS1}")

    # echo -e "${GREEN}\$ARGS1 = $ARGS1${NORMAL}" #print variable

    #! _s2se '&' '\\&' 'ca_sd&3'

    local x=$(eval "_s2se '\\\\' '\\\\\\\\' '${ARGS1}'")
    ARGS1=$x
    # echo -e "1 ${GREEN}\$ARGS1 = $ARGS1${NORMAL}" #print variable

    # _s2se '\\' '\\\\' 'ca sd&3\*_<>'
    local item=
    # cat $_result_
    IFS=$'\n'
    for item in $(cat "${_result_}"); do
        # ch_item=$(_s2se )
        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        # ARGS1=$(_s2se $item \\$item ${ARGS1})
        # echo -e "${HLIGHT}--- _s2se $item '${ARGS1}' ---${NORMAL}" #start files
        x=$(eval _s2se $item '${ARGS1}')
        ARGS1=${x}
        # echo -e "2 ${GREEN}\$ARGS1 = $ARGS1${NORMAL}" #print variable

    done
    IFS=$' \n\t'
    # echo -e "3 ${GREEN}\$ARGS1 = $ARGS1${NORMAL}" #print variable
    echo ${ARGS1}

    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
