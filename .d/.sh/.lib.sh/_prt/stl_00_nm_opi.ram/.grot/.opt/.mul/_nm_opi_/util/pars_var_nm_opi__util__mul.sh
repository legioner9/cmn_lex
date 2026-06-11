#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

pars_var_nm_opi__util__mul() {

    echo -e "${CYAN}--- pars_var_nm_opi__util__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/util/pars_var_nm_opi__util__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                              #sistem info mesage
    #{body}

    # clone_net
    # clone_local

    # pull_net_strong
    # pull_local_strong

    # push_net_strong
    # push_local_strong

    # push_net
    # push_local

    arr_all_item_repo=()

    if [ -n "${clone_net}" ] && [ -n "${clone_local}" ]; then
        plt_info "in pars_var_nm_opi__util__mul() : clone_ : EXIST '${clone_net}' && EXIST '${clone_local}' : return 1"
        return 1
    fi

    if [ -z "${clone_net}" ] && [ -z "${clone_local}" ]; then
        plt_info "in pars_var_nm_opi__util__mul() : clone_ : NOT_EXIST '${clone_net}' && NOT_EXIST '${clone_local}' : return 1"
        return 1
    fi

    if ! [ -d "${dir_repo}" ]; then
        plt_info "in pars_var_nm_opi__util__mul() : FAIL_EXEC : '[ -d file://${dir_repo} ]' : return 1"
        return 1
    fi

    if ! [ -d "${dir_bare}" ]; then
        plt_info "in pars_var_nm_opi__util__mul() : FAIL_EXEC : '[ -d file://${dir_bare} ]' : return 1"
        return 1
    fi

    if [ -n "${clone_net}" ]; then
        arr_clone_net=(${clone_net//<>/ })
        clone_net_addr=${arr_clone_net[0]}

        clone_abs_adr=${clone_net_addr}
        pull_abs_remote=${arr_clone_net[1]}

        # if ! is_ping; then
        #     plt_info "in pars_var_nm_opi__util__mul() : clone_net : FAIL_EXEC : 'is_ping()' : return 1"
        #     return 1
        # fi
    fi

    if [ -n "${clone_local}" ]; then
        arr_clone_local=(${clone_local//<>/ })

        clone_local_addr=${arr_clone_local[0]}

        clone_abs_adr=${clone_local_addr}
        pull_abs_remote=${arr_clone_local[1]}

        # clone_local_remote=${arr_clone_local[1]}
        # parr3e_ arr_clone_local
        if ! [ -d "${clone_local_addr}" ]; then
            plt_info "in pars_var_nm_opi__util__mul() : FAIL_EXEC : clone_local_addr : '[ -d file://${clone_local_addr} ]' : return 1"
            return 1
        fi
         
    fi

    arr_all_ptr_var=(clone_net clone_local pull_net_strong pull_local_strong push_net_strong push_local_strong push_net push_local)

    str_all_repo=""

    for item in ${arr_all_ptr_var[@]}; do

        if [ -n "${!item}" ]; then
            if [ -z "${str_all_repo[0]}" ]; then
                str_all_repo="${!item}"
            fi
            str_all_repo="${str_all_repo}><${!item}"
        fi

    done

    # echo -e "${GREEN}\$str_all_repo = $str_all_repo${NORMAL}" #print variable

    arr_str_all_repo=(${str_all_repo//></ })

    # parr3e_ arr_str_all_repo

    str_all_unic_repo=
    arr_str_all_unic_repo=()
    for item in ${arr_str_all_repo[@]}; do

        if ! [[ ${arr_str_all_unic_repo[*]} =~ ${item} ]]; then
            arr_str_all_unic_repo+=("${item}")
        fi
    done

    # echo -e "${GREEN}\${arr_str_all_unic_repo[@]} = ${arr_str_all_unic_repo[*]}${NORMAL}" #print variable

    parr3e_ arr_str_all_unic_repo

    # pull_net_strong
    # pull_local_strong

    echo -e "${GREEN}\$pull_abs_remote = $pull_abs_remote${NORMAL}" #print variable

}
