#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/smp0.arb/gig_file_change_repo_smp0.ram/.grot/gig_file_change_repo_smp0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

gig_file_change_repo_smp0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local hint=
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/gig_file_change_repo_smp0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/smp0.arb/gig_file_change_repo_smp0.ram/.grot/gig_file_change_repo_smp0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/smp0.arb/gig_file_change_repo_smp0.ram/.grot/gig_file_change_repo_smp0.sh)

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: 'git status -s' at any dir from dir \$1 , \$2 file with changed repo
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

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS MORE "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'NNNN' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"
    # [[ptr_path]]

    #! ptr_path
    local ptr_path_2="$2"
    ptr_path_2="$(_abs_path "${PPWD}" "ptr_path_2")"
    # [[ptr_path]]

    hint="'git status -s' at any dir from dir \$1 , \$2 file with changed repo"
    if _isn_from ${NARGS} 2 2 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '2' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    if ! [[ -d $ptr_path_1 ]]; then
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://$ptr_path_1' : ${hint} : return 1"
        return 1
    fi

    if ! [[ -f $ptr_path_2 ]]; then
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://$ptr_path_2' : ${hint} : return 1"
        return 1
    fi

    local dir_repo

    : >$ptr_path_2

    for dir_repo in $(_d2e $ptr_path_1); do
        cd $ptr_path_1/${dir_repo}
        echo -e "${CYAN}--- in '$ptr_path_1/${dir_repo}' exec :: 'git status -s' ---${NORMAL}" #sistem info mesage
        if git status -s >/dev/null; then
            if [[ -n "$(git status -s)" ]]; then
                _st_info "be changed ${dir_repo} "
                echo ${dir_repo} >>$ptr_path_2
            fi
        else
            _st_info "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : in file://$ptr_path_1/${dir_repo} 'git status -s' : ${hint} : continue"
        fi
    done

    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
