#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/repoINdir2diff_self_stl0.ram/.grot/repoINdir2diff_self.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

repoINdir2diff_self_stl0() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/repoINdir2diff_self_stl0.ram/.grot/repoINdir2diff_self.sh
    local d_name=$(dirname ${fn_sh_file})

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: 'git status -s' at any dir from dir \$1
TAGS: @git @status @dir
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

    hint="'git status -s' at any dir from dir \$1"
    if _isn_from ${NARGS} 1 1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    if ! [[ -d $1 ]]; then
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://$1' : ${hint} : return 1"
        return 1
    fi

    local dir_repo

    for dir_repo in $(_d2e $1); do
        cd $1/${dir_repo}
        echo -e "${CYAN}--- in '$1/${dir_repo}' exec :: 'git status -s' ---${NORMAL}" #sistem info mesage
        if git status -s >/dev/null; then
            if [[ -n "$(git status -s)" ]]; then
                _st_info "be changed ${dir_repo} "
            fi
        else
            _st_info "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : in file://$1/${dir_repo} 'git status -s' : ${hint} : continue"
        fi
    done

}

cd "${idir}"
unset filename
#{post_fn}
