#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/site2f2d_stl0.ram/.grot/site2f2d_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

site2f2d_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/site2f2d_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/site2f2d_stl0.ram/.grot/site2f2d_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/site2f2d_stl0.ram/.grot/site2f2d_stl0.sh)

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: not recuce wget anc file \$1
TAGS:
ARGS: 
\$1
[ ,\$2 num_menu ]
CNTL: 
    _go  : _edit ${d_name}/${FNN}.sh
    _tst :  . ${d_name}/_tst/exec.tst
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( return 1 | ... )
EXAM:
    ${FNN} 
${NORMAL}"
        return 0
    fi
    #{help_cntl_fn}

    if [[ "_go" == "$1" ]]; then
        _edit "${d_name}/${FNN}".sh
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        if [[ -f ${d_name}/_tst/exec.tst ]]; then
            . ${d_name}/_tst/exec.tst
        else
            echo "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/exec.tst' : ${hint} : return 1" >&2
            return 1
        fi
    fi

    hint="not recuce wget anc file \$1"
    if _isn_from ${NARGS} 1 1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    if ! [[ -f "$1" ]]; then
        hint="not recuce wget anc file \$1"
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://$1' : ${hint} : return 1"
        return 1
    fi

    if ! _is_yes "cr localsite from file file://$1 in file://$(pwd) ?"; then

        echo "refused be return 0"
        return 0

    else
        if _is_yes "wget -k -p -E -np --user-agent=\"Mozilla/5.0 \(X11; Linux x86_64\) AppleWebKit/537.36 \(KHTML, like Gecko\) Chrome/114.0.0.0 YaBrowser/23.7.5.717 Yowser/2.5 Safari/537.36 --input-file=$1"; then

            wget -k -p -E -np --user-agent="Mozilla/5.0 (Linux; arm_64; Android 14; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.119 YaBrowser/21.3.4.59 Mobile Safari/537.36" --input-file="$1"
            # wget -k -p -E -np --user-agent="Mozilla/5.0 (X11; Linux i686; rv:24.0) Gecko/20110328 Firefox/24.0" "$1"
            #wget -rk -np -nc -U "Mozilla/5.0 (X11; Linux i686; rv:24.0) Gecko/20110328 Firefox/24.0" --wait=5 --random-wait  адрес_сайта
            # wget -r -k -p -E -np --user-agent="Mozilla/5.0 (X11; Linux x86_64; Chromium GOST) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36"  --wait=5 --random-wait "$1"
            # wget -rk -np -nc -U "Mozilla/5.0 (X11; Linux i686; rv:24.0) Gecko/20110328 Firefox/24.0" --wait=5 --random-wait  "$1"

        fi
    fi

    

}

cd "${idir}"
unset filename
#{post_fn}
