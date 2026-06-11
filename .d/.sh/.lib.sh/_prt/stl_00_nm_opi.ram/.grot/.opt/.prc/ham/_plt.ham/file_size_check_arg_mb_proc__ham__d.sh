#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

file_size_check_arg_mb_proc__ham__d() {

    echo -e "${CYAN}--- file_size_check_arg_mb_proc__ham__d() file://${PLT_PATH}/.d/.proc/.ham/file_size_check_arg_mb_proc__ham__d.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"
    #sistem info mesage
    local check_size=
    check_size=$1

    if [ -z "${check_size}" ]; then
        plt_info "file_size_check_arg_mb_proc__ham__d() : \$1 : args NOT_DEFINE : return 1"
        return 1
    fi

    if [ $(num_01 ${check_size}) -ne 1 ]; then
        plt_info "in file_size_check_arg_mb_proc__ham__d() : \$1 mast be value of mb check size : '${check_size}' NOT_NUMBER : return 1"
        return 1
    fi

    #! -------------- START check env -------------------
    if [ -z "${name_repo}" ]; then
        plt_info "in file_size_check_arg_mb_proc__ham__d() : NOT_DEFINE : '${name_repo}' : return 1"
        return 1
    fi
    #! -------------- END check env -------------------
    #{body}

    echo -e "${HLIGHT}--- find ${REPO_PATH}/${name_repo} -type f -size +${check_size}M -not -path ${REPO_PATH}/${name_repo}/.git/* ---${NORMAL}" #start files

    IFS=$'\n'
    arr_err=($(find ${REPO_PATH}/${name_repo} -type f -size +${check_size}M -not -path "${REPO_PATH}/${name_repo}/.git/*"))
    IFS=$' \t\n'

    if [ -n "${arr_err[0]}" ]; then
        parr3e_ arr_err
        plt_info "in file_size_check_arg_mb_proc__ham__d() file://${PLT_PATH}/.d/.proc/.ham/file_size_check_arg_mb_proc__ham__d.sh : EXEC_TRUE : 'find ${REPO_PATH}/${repo_name} -type f -size +${check_size}M -not -path ${REPO_PATH}/${name_repo}/.git/*' : return 1"
        return 1
    fi

    return 0

}
