#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/foe2head_stl0.ram/.grot/foe2head_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

foe2head_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local hint=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/foe2head_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/foe2head_stl0.ram/.grot/foe2head_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/foe2head_stl0.ram/.grot/foe2head_stl0.sh)

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: git reset work dir [if \$1 -> abs_path] to HEAD and delte untrack files
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

    #RRR

    # if ! git rev-parse --show-toplevel >/dev/null; then
    #     hint="'file://${PPWD}' NOT_GIT_DIR"
    #     _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'git rev-parse --show-toplevel' : ${hint} : return 1"
    #     return 1
    # fi

    #! ptr_path
    local ptr_path="$1"
    ptr_path="$(_abs_path "${PPWD}" "ptr_path")"
    #[[ptr_path]]

    cd ${ptr_path} || {
        hint="dir = \$1 -> ptr_path"
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'cd file://${ptr_path}' : ${hint} : return 1"

        cd ${PPWD}
        return 1
    }

    if ! is3_foe_dir_stl0 ${ptr_path} >/dev/null; then
        hint="'file://${PPWD}' NOT_GIT_DIR"
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'git rev-parse --show-toplevel' : ${hint} : return 1"

        cd ${PPWD}
        return 1
    fi

    # echo -e "${BLUE}--- exec: git status -s in file://$(pwd) ---${NORMAL}" #start files
    # git status -s

    if [[ -z "$(git status -s)" ]]; then
        echo -e "${RED}--- work dir file://$(pwd) is clear ---${NORMAL}" #sistem info mesage
        echo -e "${RED}--- return 0 ---${NORMAL}"                        #start files

        cd ${PPWD}
        return 0
    fi

    local git_top_level_dir=$(git rev-parse --show-toplevel)

    cd ${git_top_level_dir} || {
        hint="dir = \$(git rev-parse --show-toplevel)"
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'cd file://${git_top_level_dir}' : ${hint} : return 1"

        cd ${PPWD}
        return 1
    }

    echo -e "${RED}--- exec: git status -s ---${NORMAL}" #start files
    git status -s

    _is_yes "SEE^, DO? in file://${git_top_level_dir} 'git reset --hard HEAD' that files?" && {
        git reset --hard HEAD
    }

    if [ -n "$(git clean -d -n)" ]; then

        echo -e "${RED}--- exec: git clean -d -n ---${NORMAL}" #start files

        git clean -d -n
        _is_yes "SEE^, DO? in file://${git_top_level_dir} 'git clean -d -f' that files?" && {
            git clean -d -f
        }
    fi

    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
