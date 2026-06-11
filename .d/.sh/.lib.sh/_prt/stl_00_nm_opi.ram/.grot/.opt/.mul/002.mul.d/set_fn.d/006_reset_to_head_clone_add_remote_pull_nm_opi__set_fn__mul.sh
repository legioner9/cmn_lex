#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

006_reset_to_head_clone_add_remote_pull_nm_opi__set_fn__mul() {

    echo -e "${CYAN}--- 006_only_clone_pull_nm_opi__set_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/set_fn/006_reset_to_head_clone_add_remote_pull_nm_opi__set_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                                              #sistem info mesage
    # local first_arg=
    # first_arg=$1
    # if [ -z "${first_arg}" ]; then
    #     plt_info "006_reset_to_head_clone_add_remote_pull_nm_opi__set_fn__mul() : $1 : args NOT_DEFINE : return 1"
    #     return 1
    # fi
    #! -------------- START check env -------------------
    # if [ -z "${XXX}" ]; then
    #     plt_info "in 006_reset_to_head_clone_add_remote_pull_nm_opi__set_fn__mul() : NOT_DEFINE : '\${XXX}' : return 1"
    #     return 1
    # fi
    #! -------------- END check env -------------------
    #{body}

    if ! reset_hard_to_head_nm_opi__singl_fn__mul; then
        plt_exit "in 006_reset_to_head_clone_add_remote_pull_nm_opi__set_fn__mul() : FAIL_EXEC : reset_hard_to_head_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    if ! clone_nm_opi__singl_fn__mul; then
        plt_exit "in 006_reset_to_head_clone_add_remote_pull_nm_opi__set_fn__mul() : FAIL_EXEC : clone_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    echo -e "${BLUE}--- add_remote_nm_opi__singl_fn__mul() ---${NORMAL}" #sistem info mesage
    add_remote_nm_opi__singl_fn__mul

    if ! pull_nm_opi__singl_fn__mul; then
        plt_exit "in 006_reset_to_head_clone_add_remote_pull_nm_opi__set_fn__mul() : FAIL_EXEC : pull_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

}
