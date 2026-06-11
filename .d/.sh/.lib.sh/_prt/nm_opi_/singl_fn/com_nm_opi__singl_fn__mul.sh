#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

com_nm_opi__singl_fn__mul() {

    echo -e "${CYAN}--- com_nm_opi__singl_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/singl_fn/com_nm_opi__singl_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                #sistem info mesage
    #{body}

    cd "${dir_repo}/${name_repo}" || {
        plt_info "in com_nm_opi__singl_fn__mul() : FAIL_EXEC : 'cd file://${dir_repo}/${name_repo}' : return 1"
        return 1
    }

    if [ "${nothing_commit}" -eq 0 ]; then

        if ! git commit; then
            plt_info "in com_nm_opi__singl_fn__mul() : FAIL_EXEC : 'git commit' : { pwd = ${dir_repo}/${name_repo} } : return 1"
        fi

    fi

}
