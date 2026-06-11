#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

clone_nm_opi__singl_fn__mul() {

    echo -e "${CYAN}--- clone_nm_opi__singl_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/singl_fn/clone_nm_opi__singl_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                    #sistem info mesage
    #{body}

    # clone_net
    # clone_local
    # name_repo
    # dir_contaner="$(dirname ${REPO_PATH})"
    # dir_repo=${dir_contaner}/_repo
    # dir_bare=${dir_contaner}/_bare
    # clone_abs_adr

    cd ${dir_repo} || {
        plt_info "in clone_nm_opi__singl_fn__mul() : FAIL_EXEC : 'cd file://${dir_repo}' : return 1"
        return 1
    }

    # plt_pause "in dir $(pwd) : DO? : 'git clone ${clone_abs_adr}'"

    local is_gitflic

    is_gitflic=$(echo "${clone_abs_adr}" | grep gitflic)

    if [ -n "${is_gitflic}" ]; then
        clone_abs_adr=${clone_abs_adr,,}
    fi

    if [ -f "${REPO_PATH}/${name_repo}"/.d/.ham/ham/before_clone.ham ]; then
        if ! . "${REPO_PATH}/${name_repo}"/.d/.ham/ham/before_clone.ham; then
            plt_exit "in nm_opi_() : FAIL_EXEC : continue? : '. file://${REPO_PATH}/${name_repo}/.d/.ham/ham/before_clone.ham' {with \$name_repo = '$name_repo'} : continue"
            continue
        fi
    fi

    if ! [ -d "${REPO_PATH}/${name_repo}" ]; then
        if ! git clone "${clone_abs_adr}" "${name_repo}"; then
            plt_pause "in clone_nm_opi__singl_fn__mul() : FAIL_EXEC : 'git clone ${clone_abs_adr}' : return 1"
            return 1
        fi
    else
        echo -e "${BLUE}--- not need clone : DIR_EXIST : ${REPO_PATH}/${name_repo} ---${NORMAL}" #sistem info mesage
    fi

    if [ -f "${REPO_PATH}/${name_repo}"/.d/.ham/ham/after_clone.ham ]; then
        if ! . "${REPO_PATH}/${name_repo}"/.d/.ham/ham/after_clone.ham; then
            plt_exit "in nm_opi_() : FAIL_EXEC : continue? : '. file://${REPO_PATH}/${name_repo}/.d/.ham/ham/after_clone.ham' {with \$name_repo = '$name_repo'} : continue"
        fi
    fi

}
