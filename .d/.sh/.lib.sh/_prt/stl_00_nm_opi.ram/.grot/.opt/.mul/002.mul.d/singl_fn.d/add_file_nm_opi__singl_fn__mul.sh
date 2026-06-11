#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

add_file_nm_opi__singl_fn__mul() {

    echo -e "${CYAN}--- add_file_nm_opi__singl_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/singl_fn/add_file_nm_opi__singl_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                          #sistem info mesage
    #{body}

    if [ -f "${REPO_PATH}/${name_repo}"/.d/.ham/ham/before_add_file_.ham ]; then

        echo -e "${BLUE}--- . "${REPO_PATH}/${name_repo}"/.d/.ham/ham/before_add_file_.ham ---${NORMAL}" #sistem info mesage

        if ! . "${REPO_PATH}/${name_repo}"/.d/.ham/ham/before_add_file_.ham; then
            plt_exit "in nm_opi_() : FAIL_EXEC : '. file://${REPO_PATH}/${name_repo}/.d/.ham/ham/before_add_file_.ham' {with \$name_repo = '$name_repo'} : return 1"
            return 1
        fi

    fi

    cd "${dir_repo}/${name_repo}" || {
        plt_info "in add_file_nm_opi__singl_fn__mul() : FAIL_EXEC : 'cd file://${dir_repo}/${name_repo}' : return 1"
        return 1
    }

    #!---------------------------------------------------

    check_gs_name_repo_add_file_nm_opi__singl_fn__mul() {
        is_rl_siev_and_add_file_nm_opi__singl_fn__mul() {
            while IFS= read -r line; do
                flag=1
                for match in $@; do
                    if ! [ 1 -eq $(sins_01 "${match}" "${line}") ]; then
                        flag=0
                        break
                    fi
                done
                if [ 1 -eq ${flag} ]; then
                    return 0
                fi
            done
            return 1
        }

        match_str="Untracked files"

        if [ -z "$(git diff | cat)" ] && ! gs | is_rl_siev_and_add_file_nm_opi__singl_fn__mul "${match_str}"; then
            # if [ -z "$(git diff | cat)" ]; then
            return 0
        else
            return 1
        fi

        #!---------------------------------------------------
    }

    if ! check_gs_name_repo_add_file_nm_opi__singl_fn__mul; then

        echo -e "${BLUE}--- git add . ---${NORMAL}" #sistem info mesage
        if ! git add .; then
            plt_info "in add_file_nm_opi__singl_fn__mul() : FAIL_EXEC : 'git add .' : { pwd = ${dir_repo}/${name_repo} } : return 1"
            return 1
        fi
    else
        echo -e "${BLUE}--- nothing_commit ---${NORMAL}" #sistem info mesage
        nothing_commit=1
    fi

}
