#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_github_legioner9_nm_opi__var__mul() {

    echo -e "${CYAN}--- 02_github_legioner9_nm_opi__var__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/var/02_github_legioner9_nm_opi__var__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                 #sistem info mesage
    #{body}

    #? keyword_substring for sieve:
    ##? clone pull push
    ##? net local
    ##? strong

    # git identificator: name_repo
    # name_repo="tgu"

    #? fs contaner: dir_repo
    dir_contaner="$(dirname ${REPO_PATH})"

    #? repo lockation: dir_repo
    dir_repo=${dir_contaner}/_repo
    #? bare lockation: dir_repo
    dir_bare=${dir_contaner}/_bare

    #! NB single current dir create as clone into curr_repo_dir=${dir_repo}/${name_repo}: dir_contaner/_repo/tgu

    #? signature: fn_name=addr<>remote><addr2<>remote2
    #! structure to parse: var_name=key1<>val1><key2<>val2

    #! clone_net || clone_local
    clone_net="git@github.com:legioner9/${name_repo}.git<>GITHUB_LEGIONER9_${name_repo}"
    clone_local=

    pull_net_strong="${clone_net}"
    pull_local_strong="${clone_local}"

    push_net_strong="git@github.com:legioner9/${name_repo}.git<>GITHUB_LEGIONER9_${name_repo}><git@gitflic.ru:legioner9/${name_repo}.git<>GITFLIC_LEGIONER9_${name_repo}"
    push_local_strong="${dir_bare}/${name_repo}<>HOME_REPOBARE_BARE_${name_repo}"

    push_net=
    push_local="/run/media/${USER}/MY_ONE/REPOBARE/_bare/${name_repo}<>MY_ONE_REPOBARE_BARE_${name_repo}></run/media/${USER}/TOSHIBA_EXT/REPOBARE/_bare/${name_repo}<>TOSHIBA_EXT_REPOBARE_BARE_${name_repo}></run/media/${USER}/TOSH/REPOBARE/_bare/${name_repo}<>TOSH_REPOBARE_BARE_${name_repo}"

    # wrp_fifs1_ mkdir -p ${dir_repo}/ -cnd1
    # wrp_fifs1_ mkdir -p ${dir_bare}/ -cnd1

    wrp2_ mkdir -pv --_cnd ${dir_repo}
    wrp2_ mkdir -pv --_cnd ${dir_bare}

}
