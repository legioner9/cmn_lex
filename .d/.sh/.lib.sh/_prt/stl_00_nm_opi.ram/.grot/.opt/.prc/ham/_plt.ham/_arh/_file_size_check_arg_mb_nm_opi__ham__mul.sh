#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

file_size_check_arg_mb_nm_opi__ham__mul() {

    check_size=$1

    echo -e "${CYAN}--- file_size_check_arg_mb_nm_opi__ham__mul() file://${PD_PATH}/.d/.mul/nm_opi_/ham/file_size_check_arg_mb_nm_opi__ham__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN:   ---${NORMAL}"                                                                                                                     #sistem info mesage
    #{body}

    if [ -z "${check_size}" ]; then
        plt_info "in file_size_check_arg_mb_nm_opi__ham__mul() : \$1 mast be value of mb check size : args NOT_DEFINE : return 1"
        return 1
    fi

    if [ $(num_01 ${check_size}) -eq 1 ]; then
        plt_info "in file_size_check_arg_mb_nm_opi__ham__mul() : \$1 mast be value of mb check size : \$1 not NOT_NUMBER : return 1"
        return 1
    fi

    #! -------------- START check env -------------------
    
    if [ -z "${name_repo}" ]; then
        plt_info "in file_size_check_arg_mb_nm_opi__ham__mul() : NOT_DEFINE : '\${name_repo}' : return 1"
        return 1
    fi

    #! -------------- END check env -------------------

    echo -e "${HLIGHT}--- find ${REPO_PATH}/${name_repo} -type f -size +${check_size}M -not -path ${REPO_PATH}/${name_repo}/.git/* ---${NORMAL}" #start files
    if [ -n "$(find ${REPO_PATH}/${name_repo} -type f -size +${check_size}M -not -path "${REPO_PATH}/${name_repo}/.git/*")" ]; then
        plt_info "in file:///${REPO_PATH}/${name_repo}/.d/.ham/ham/before_add_file_.ham : EXEC_TRUE : 'find ${REPO_PATH}/${repo_name} -type f -size +40M -not -path ${REPO_PATH}/${name_repo}/.git/*' : return 1"
        return 1
    fi

    return 0

}
