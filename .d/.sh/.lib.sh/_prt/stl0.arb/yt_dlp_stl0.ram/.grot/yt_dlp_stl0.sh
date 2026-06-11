#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/yt_dlp_stl0.ram/.grot/yt_dlp_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

yt_dlp_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local hint="\$1 0 or num_lst_in_dir for down yt_dlp to \$2 u@dir \$3 (1->144|2->240|3->360|4->480|5->720|6->1080) \$4 (|-y)"
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/yt_dlp_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/yt_dlp_stl0.ram/.grot/yt_dlp_stl0.sh
    local d_name=$(dirname ${ST_RC_D_PATH}/.d/.arb/stl0.arb/yt_dlp_stl0.ram/.grot/yt_dlp_stl0.sh)

    echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file}---${NORMAL}" #started functions

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: ${hint}
TAGS:
ARGS: 
${hint}
CNTL: 
    _go     : _edit ${d_name}/${FNN}.sh
    _tst    : . ${d_name}/_tst/exec.tst
    _flow_1 : . ${d_name}/_tst/_flow_tst.sh.v1
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

    if [[ "_flow_1" == "$1" ]]; then
        if [[ -f ${d_name}/_tst/_flow_tst.sh.v1 ]]; then
            . ${d_name}/_tst/_flow_tst.sh.v1
            return 0
        else
            echo "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() :  NOT_FILE : 'file://${d_name}/_tst/_flow_tst.sh.v1' : ${hint} : return 1" >&2
            return 1
        fi
    fi

    if _isn_from ${NARGS} 2 4 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '2 - 4' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #[[ptr_path]]
    #! ptr_path
    local ptr_path="$2"
    ptr_path="$(_abs_path "${PPWD}" "ptr_path")"

    [ -d ${ptr_path} ] || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${ptr_path}' : ${hint} : return 1"
        return 1
    }

    local dir_list=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/yt_dlp_stl0/.lst

    _arr_name=($(_df2e ${dir_list}))
    _result=

    _nr2mm _arr_name _arr_name _result "$1" >/dev/null
    echo -e "${GREEN}\$_result = $_result${NORMAL}" #print variable

    local file_list=${dir_list}/${_result}

    _f2e ${file_list}
    echo

    cd ${ptr_path} || {
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'cd file://${ptr_path}' : ${hint} : return 1"
        return 1
    }

    [ "-y" = "$4" ] || {
        _is_yes "DownLoad that list to file://$(pwd) ?" || {
            _st_info "NOT 'y' - return 0"
            return 0
        }
    }
# 144 240 360 480 720 1080
    local resolution=
    [[ 1 -eq $3 ]] && resolution=144 
    [[ 2 -eq $3 ]] && resolution=240 
    [[ 3 -eq $3 ]] && resolution=360 
    [[ 4 -eq $3 ]] && resolution=480 
    [[ 5 -eq $3 ]] && resolution=720 
    [[ 6 -eq $3 ]] && resolution=1080 
    [[ -n "${resolution}" ]] || {
        _st_exit "in fs= file:// , line=${LINENO}, ${FNN}() : : NOT_IN_CONDITION : '\$3 not (1|2|3|4|5|6)' : ${hint} : return 1"
        return 1
    }

    local item=

    for item in $(_f2e ${file_list}); do

        echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
        # yt-dlp -c "https://www.youtube.com/watch?v=tJwDiAPqSw0&list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co&index=$num&pp=iAQB"

        # echo -e "${HLIGHT}--- yt-dlp -c https://www.youtube.com/watch?v=AQTHyG-KM7U&list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co&index=19 ---${NORMAL}" #start files
        # "wv*+wa/w"
        # '(bv*[ext=mp4][height<=720]+ba*[ext=m4a])[protocol^=http]'
        # 'worstvideo[vcodec^=avc1]+worstaudio[acodec^=mp4a]'

        # until yt-dlp -c -f worstvideo+worstaudio ${str_0}/${item}; do
        echo -e "${GREEN}\$PPWD = $PPWD${NORMAL}"                                                                                 #print variable
        echo -e "${HLIGHT}--- until yt-dlp -c -f '(bv*[ext=mp4][height<=${resolution}]+ba*[ext=m4a])[protocol^=http]' ${item} ---${NORMAL}" #start files
        until eval "yt-dlp -c -f '(bv*[ext=mp4][height<=${resolution}]+ba*[ext=m4a])[protocol^=http]' ${item}"; do
            :
        done

    done

    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
