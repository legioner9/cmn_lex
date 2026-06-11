#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

add_remote_nm_opi__singl_fn__mul() {

    echo -e "${CYAN}--- add_remote_nm_opi__singl_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/singl_fn/add_remote_nm_opi__singl_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                              #sistem info mesage
    #{body}

    cd "${dir_repo}/${name_repo}" || {
        plt_info "in clone_nm_opi__singl_fn__mul() : FAIL_EXEC : 'cd file://${dir_repo}/${name_repo}' : return 1"
        return 1
    }

    for item in ${arr_str_all_unic_repo[@]}; do

        arr_item=(${item//<>/ })

        local arr_item0=${arr_item[0]}

        local is_gitflic

        is_gitflic=$(echo "${arr_item0}" | grep gitflic)

        if [ -n "${is_gitflic}" ]; then
            arr_item0=${arr_item0,,}
        fi

        echo -e "${HLIGHT}--- git remote add ${arr_item[1]} ${arr_item0} ---${NORMAL}" #start files

        # if ! git remote add ${arr_item[1]} ${arr_item[0]}; then
        #     plt_pause "in clone_nm_opi__singl_fn__mul() : FAIL_EXEC : 'git remote add ${arr_item[1]} ${arr_item[0]}' : return 1"
        #     return 1
        # fi
        # echo -e "${BLUE}--- git remote add ${arr_item[1]} ${arr_item[0]} ---${NORMAL}" #sistem info mesage

        # git remote add ${arr_item[1]} ${arr_item[0]} 2>/dev/null
        git remote add "${arr_item[1]}" "${arr_item0}"

    done

}
