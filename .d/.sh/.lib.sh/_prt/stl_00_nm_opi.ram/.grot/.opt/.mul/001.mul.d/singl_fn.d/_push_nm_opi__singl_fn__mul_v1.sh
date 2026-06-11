#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

push_nm_opi__singl_fn__mul() {

    echo -e "${CYAN}--- push_nm_opi__singl_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/singl_fn/push_nm_opi__singl_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                  #sistem info mesage
    #{body}

    cd "${dir_repo}/${name_repo}" || {
        plt_info "in clone_nm_opi__singl_fn__mul() : FAIL_EXEC : 'cd file://${dir_repo}/${name_repo}' : return 1"
        return 1
    }

    # push_net_strong
    # push_local_strong
    # push_net
    # push_local

    echo -e "${GREEN}\$push_net_strong = $push_net_strong${NORMAL}" #print variable
    arr_push_net_strong=()
    if [ -n "${push_net_strong}" ]; then

        if ! is_ping; then
            plt_info "in push_nm_opi__singl_fn__mul() : FAIL_EXEC : 'is_ping()' at \${push_net_strong}=${push_net_strong} : return 1"
            return 1
        fi

        arr_push_net_strong=(${push_net_strong//></ })
        parr3e_ arr_push_net_strong
        for item in ${arr_push_net_strong[@]}; do
            arr_item=(${item//<>/ })

            adr=${arr_item[0]}
            remote=${arr_item[1]}

            echo -e "${GREEN}\$adr = $adr${NORMAL}"       #print variable
            echo -e "${GREEN}\$remote = $remote${NORMAL}" #print variable

            echo -e "${HLIGHT}--- git push "${remote}" master ---${NORMAL}" #start files

            if ! git push "${remote}" master; then
                plt_info "push_nm_opi__singl_fn__mul() : EXEC_FAIL : 'git push ${remote} master' : return 1"
                return 1
            fi

        done

    fi

    echo -e "${GREEN}\$push_local_strong = $push_local_strong${NORMAL}" #print variable

    arr_push_local_strong=()

    if [ -n "${push_local_strong}" ]; then
        arr_push_local_strong=(${push_local_strong//></ })
        parr3e_ arr_push_local_strong
        for item in ${arr_push_local_strong[@]}; do
            arr_item=(${item//<>/ })

            adr=${arr_item[0]}
            remote=${arr_item[1]}

            if ! [ -d "${adr}" ]; then
                mkdir -pv "${adr}"

                cd "${adr}" || {
                    plt_info "push_nm_opi__singl_fn__mul() : EXEC_FAIL : adr : 'cd ${adr}' : return 1"
                    return 1
                }

                git --bare init

                cd "${dir_repo}/${name_repo}" || {
                    plt_info "in clone_nm_opi__singl_fn__mul() : FAIL_EXEC : 'cd file://${dir_repo}/${name_repo}' : return 1"
                    return 1
                }

            fi

            echo -e "${GREEN}\$adr = $adr${NORMAL}"       #print variable
            echo -e "${GREEN}\$remote = $remote${NORMAL}" #print variable

            echo -e "${HLIGHT}--- git push "${remote}" master ---${NORMAL}" #start files

            if ! git push "${remote}" master; then
                plt_info "push_nm_opi__singl_fn__mul() : EXEC_FAIL : 'git push ${remote} master' : return 1"
                return 1
            fi

        done
    fi

    echo -e "${GREEN}\$push_net = $push_net${NORMAL}" #print variable

    arr_push_net=()
    if [ -n "${push_net}" ]; then

        if ! is_ping; then
            plt_info "in push_nm_opi__singl_fn__mul() : FAIL_EXEC : 'is_ping()' at \${push_net}=${push_net} : return 0"
            return 0
        fi

        arr_push_net=(${push_net//></ })
        parr3e_ arr_push_net
        for item in ${arr_push_net[@]}; do
            arr_item=(${item//<>/ })

            adr=${arr_item[0]}
            remote=${arr_item[1]}

            echo -e "${GREEN}\$adr = $adr${NORMAL}"       #print variable
            echo -e "${GREEN}\$remote = $remote${NORMAL}" #print variable

            echo -e "${HLIGHT}--- git push "${remote}" master ---${NORMAL}" #start files

            if ! git push "${remote}" master; then
                plt_info "push_nm_opi__singl_fn__mul() : EXEC_FAIL : 'git push ${remote} master' : no action"
            fi

        done
    fi

    echo -e "${GREEN}\$push_local = $push_local${NORMAL}" #print variable

    arr_push_local=()
    if [ -n "${push_local}" ]; then
        arr_push_local=(${push_local//></ })
        parr3e_ arr_push_local

        for item in ${arr_push_local[@]}; do
            arr_item=(${item//<>/ })

            adr=${arr_item[0]}
            remote=${arr_item[1]}

            if ! [ -d ${adr} ]; then

                mkdir -pv "${adr}"

                cd "${adr}" || {
                    plt_info "push_nm_opi__singl_fn__mul() : EXEC_FAIL : adr : 'cd ${adr}' : continue"
                    continue
                }

                git --bare init

                cd "${dir_repo}/${name_repo}" || {
                    plt_info "in clone_nm_opi__singl_fn__mul() : FAIL_EXEC : 'cd file://${dir_repo}/${name_repo}' : continue"
                    continue
                }

            fi

            echo -e "${GREEN}\$adr = $adr${NORMAL}"       #print variable
            echo -e "${GREEN}\$remote = $remote${NORMAL}" #print variable

            echo -e "${HLIGHT}--- git push "${remote}" master ---${NORMAL}" #start files

            if ! git push "${remote}" master; then
                plt_info "push_nm_opi__singl_fn__mul() : EXEC_FAIL : 'git push ${remote} master' : continue"
                continue
            fi

        done
    fi

}
