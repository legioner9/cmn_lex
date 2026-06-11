#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

010_clone_add_remote_pull_nm_opi__set_fn__mul() {

    echo -e "${CYAN}--- 010_clone_add_remote_pull_nm_opi__set_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/set_fn/carp_nm_opi__set_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: INIT flow : clone ---${NORMAL}"                                                                                                #sistem info mesage
    #{body}

    # exec block start --------------------------------
    if ! clone_nm_opi__singl_fn__mul; then
        plt_exit "in 010_clone_add_remote_pull_nm_opi__set_fn__mul() : FAIL_EXEC : clone_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    #! check_ord

    # if ! nm_opi_check_ord_name_repo; then
    #     plt_exit "in 010_clone_add_remote_pull_nm_opi__set_fn__mul() : FAIL_EXEC : nm_opi_check_ord_name_repo {with \${name_repo}} = '${name_repo}'} : return 1"
    #     return 1
    # fi

    # if ! add_remote_nm_opi__singl_fn__mul; then
    #     plt_exit "in 010_clone_add_remote_pull_nm_opi__set_fn__mul() : FAIL_EXEC : add_remote_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
    #     return 1
    # fi
    
    echo -e "${BLUE}--- add_remote_nm_opi__singl_fn__mul() ---${NORMAL}" #sistem info mesage
    add_remote_nm_opi__singl_fn__mul

    if ! pull_nm_opi__singl_fn__mul; then
        plt_exit "in 010_clone_add_remote_pull_nm_opi__set_fn__mul() : FAIL_EXEC : pull_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi
    # exec block end --------------------------------

}
