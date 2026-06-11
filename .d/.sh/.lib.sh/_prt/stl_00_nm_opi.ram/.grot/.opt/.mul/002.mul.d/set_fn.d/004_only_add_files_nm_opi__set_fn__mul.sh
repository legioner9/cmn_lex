#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

004_only_add_files_nm_opi__set_fn__mul() {

    echo -e "${CYAN}--- 004_only_add_files_nm_opi__set_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/set_fn/only_add_nm_opi__set_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: test add files ---${NORMAL}"                                                                                                    #sistem info mesage
    #{body}

    if ! add_file_nm_opi__singl_fn__mul; then
        plt_exit "in 004_tst_only_add_nm_opi__set_fn__mul() : FAIL_EXEC : add_file_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

}
