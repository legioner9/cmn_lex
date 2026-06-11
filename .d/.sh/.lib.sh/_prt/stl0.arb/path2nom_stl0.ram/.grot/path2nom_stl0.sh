#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/path2nom_stl0.ram/.grot/path2nom_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

path2nom_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local hint=
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/path2nom_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/path2nom_stl0.ram/.grot/path2nom_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/path2nom_stl0.ram/.grot/path2nom_stl0.sh)

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: _s2f \${PATH} '\${REPO_PATH}' \$1 : ST_RC_D_PATH, ST_RC_D_DATA_PATH, ST_RC_DATA_PATH, REPO_PATH, HOME
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
        else
            echo "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/exec.tst' : ${hint} : return 1" >&2
            return 1
        fi
    fi

    hint="\$1: file for treat "
    if _isn_from ${NARGS} 1 1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #! ptr_path
    local ptr_path="$1"
    ptr_path="$(_abs_path "${PPWD}" "ptr_path")"
    #[[ptr_path]]

    # $ST_RC_D_DATA_PATH
    # $STRC_DATA_PATH
    # $STA_PATH
    # $ST_RC_D_PATH

    eval "_s2f ${ST_RC_D_PATH} '\${ST_RC_D_PATH}' ${ptr_path}" # /home/st/REPOBARE/_repo/st_rc_d

    eval "_s2f ${ST_RC_D_DATA_PATH} '\${ST_RC_D_DATA_PATH}' ${ptr_path}" # data_repo for st_rc_d repo
    eval "_s2f ${STRC_DATA_PATH} '\${ST_RC_DATA_PATH}' ${ptr_path}" # data_repo for ~/.d

    
    #! eval "_s2f ${STA_PATH} '\${STA_PATH}' ${ptr_path}"

    eval "_s2f ${REPO_PATH} '\${REPO_PATH}' ${ptr_path}"
    eval "_s2f ${HOME} '\${HOME}' ${ptr_path}"

    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
