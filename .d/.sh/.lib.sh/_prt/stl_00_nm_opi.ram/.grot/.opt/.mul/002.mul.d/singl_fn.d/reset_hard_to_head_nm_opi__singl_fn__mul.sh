#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

reset_hard_to_head_nm_opi__singl_fn__mul() {

    echo -e "${CYAN}--- reset_hard_to_head_nm_opi__singl_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/singl_fn/reset_hard_to_head_nm_opi__singl_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                              #sistem info mesage
    #{body}

    cd "${dir_repo}/${name_repo}" || {
        plt_info "in clone_nm_opi__singl_fn__mul() : FAIL_EXEC : 'cd file://${dir_repo}/${name_repo}' : return 1"
        return 1
    }

    # push_net_strong
    # push_local_strong
    # push_net
    # push_local

    plt_pause "DO?! :: git reset --hard HEAD :: \${name_repo}=${name_repo}"

    if ! git reset --hard HEAD; then
        plt_info "push_nm_opi__singl_fn__mul() : EXEC_FAIL : 'git push ${remote} master' : return 1"
        return 1
    fi

}
