#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

002_carppafcp_nm_opi__set_fn__mul() {

    echo -e "${CYAN}--- 002_carppafcp_nm_opi__set_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/set_fn/carppafcp_nm_opi__set_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: IFCHANGE FLOW : clone add push ---${NORMAL}"                                                                           #sistem info mesage
    #{body}

    # exec block start --------------------------------

    if ! clone_nm_opi__singl_fn__mul; then
        plt_exit "in 002_carppafcp_nm_opi__set_fn__mul() : FAIL_EXEC : clone_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    #! check_ord

    # if ! nm_opi_check_ord_name_repo; then
    #     plt_exit "in 002_carppafcp_nm_opi__set_fn__mul() : FAIL_EXEC : nm_opi_check_ord_name_repo {with \${name_repo}} = '${name_repo}'} : return 1"
    #     return 1
    # fi

    # if ! add_remote_nm_opi__singl_fn__mul; then
    #     plt_exit "in 002_carppafcp_nm_opi__set_fn__mul() : FAIL_EXEC : add_remote_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
    #     return 1
    # fi

    echo -e "${BLUE}--- add_remote_nm_opi__singl_fn__mul() ---${NORMAL}" #sistem info mesage
    add_remote_nm_opi__singl_fn__mul

    if ! push_nm_opi__singl_fn__mul; then
        plt_exit "in 002_carppafcp_nm_opi__set_fn__mul() : FAIL_EXEC : push_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    if ! pull_nm_opi__singl_fn__mul; then
        plt_exit "in 002_carppafcp_nm_opi__set_fn__mul() : FAIL_EXEC : pull_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    # push_nm_opi__singl_fn__mul
    #! nothing_commit global var to gcom_

    nothing_commit=0

    if ! add_file_nm_opi__singl_fn__mul; then
        plt_exit "in carp_nm_opi__set_fn__mul() : FAIL_EXEC : add_file_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    if ! com_nm_opi__singl_fn__mul; then
        plt_exit "in carp_nm_opi__set_fn__mul() : FAIL_EXEC : com_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    if ! push_nm_opi__singl_fn__mul; then
        plt_exit "in carp_nm_opi__set_fn__mul() : FAIL_EXEC : push_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    # exec block end --------------------------------

    # END EXL FILE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

}
