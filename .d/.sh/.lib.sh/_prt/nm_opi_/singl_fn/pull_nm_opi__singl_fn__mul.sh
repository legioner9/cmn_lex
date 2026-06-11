#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

pull_nm_opi__singl_fn__mul() {

    echo -e "${CYAN}--- pull_nm_opi__singl_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/singl_fn/pull_nm_opi__singl_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                  #sistem info mesage
    #{body}

    cd "${dir_repo}/${name_repo}" || {
        plt_info "in clone_nm_opi__singl_fn__mul() : FAIL_EXEC : 'cd file://${dir_repo}/${name_repo}' : return 1"
        return 1
    }

    if ! is_ping; then
        plt_info "in pull_nm_opi__singl_fn__mul() : FAIL_EXEC : 'is_ping()' at \${pull_abs_remote}=${pull_abs_remote} : return 0"
        # return 1
    fi

    echo -e "${HLIGHT}--- git pull ${pull_abs_remote} master ---${NORMAL}" #start files

    if ! git pull "${pull_abs_remote}" master; then
        plt_pause "in pull_nm_opi__singl_fn__mul() : FAIL_EXEC : 'git pull "${pull_abs_remote}" master' : return 1"
        return 1
    fi

}
