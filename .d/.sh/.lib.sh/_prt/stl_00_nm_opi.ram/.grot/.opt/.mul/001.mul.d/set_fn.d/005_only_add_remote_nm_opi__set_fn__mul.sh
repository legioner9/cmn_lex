#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

005_only_add_remote_nm_opi__set_fn__mul() {

    echo -e "${CYAN}--- 005_only_add_remote_nm_opi__set_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/set_fn/005_only_add_remote_nm_opi__set_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                          #sistem info mesage
    #{body}

    echo -e "${BLUE}--- add_remote_nm_opi__singl_fn__mul() ---${NORMAL}" #sistem info mesage
    add_remote_nm_opi__singl_fn__mul
    return 0

}
