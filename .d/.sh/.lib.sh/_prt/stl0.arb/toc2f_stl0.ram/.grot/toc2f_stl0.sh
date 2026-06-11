#!/bin/bash

#. "${HOME}/.bashrc"

filename="${ST_RC_D_PATH}/.d/.arb/stl0.arb/toc2f_stl0.ram/.grot/toc2f_stl0.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

toc2f_stl0() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    local estat=

    #* local fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/toc2f_stl0

    local fn_sh_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/toc2f_stl0.ram/.grot/toc2f_stl0.sh
    local fn_hie_file=${ST_RC_D_PATH}/.d/.arb/stl0.arb/toc2f_stl0.ram/.grot/toc2f_stl0.hie
    local d_name=$(dirname ${fn_sh_file})

    local usr_fn_data_dir=${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/toc2f_stl0
    local opt_fn_data_dir=${d_name}/.opt

    #* echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    local hint="hint -> table of cont : from file://\$1 file[.md] to file[.md].toc2f_stl0 "
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: ${FNN} :: table of cont : from \$1 file[.md] to file[.md].toc2f_stl0 [-i] 
TAGS:
ARGS: 
\$1
[ ,\$N _i] mast define N
CNTL: 
    _go         : _edit body        : _edit file://${d_name}/${FNN}.sh
    _tst        : . exec.tst        : . file://${d_name}/_tst/exec.tst
    _tst_e      : _edit tst_dir     : _edit file://${d_name}/_tst
    _flow_1     : . _flow_tst.sh.v1 : . file://${d_name}/_tst/_flow_tst.sh.v1

    _hie_m      : more hie_file     : more file://${hie_file} 
    _hie_e      : _edit hie_file    : _edit file://${hie_file} 

    _usr_d_e    : user data : use by ${FNN} : _edit usr_fn_data_dir : _edit file://${usr_fn_data_dir}
    _opt_d_e    : opt data : use by user : _edit opt_fn_data_dir : _edit file://${opt_fn_data_dir}    
    
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( if ... return 0 | if ... return 1 )
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
        if ! _source_w1_isf ${d_name}/_tst/exec.tst; then
            _st_exit "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_source_w1_isf ${d_name}/_tst/exec.tst' : ${hint} : return 1"
            cd $PPWD
            return 1
        fi
    fi

    if [[ "_tst_e" == "$1" ]]; then
        _edit ${d_name}/_tst
        return 0
    fi

    if [[ "_usr_d_e" == "$1" ]]; then
        _edit ${usr_fn_data_dir}
        return 0
    fi

    if [[ "_opt_d_e" == "$1" ]]; then
        _edit ${opt_fn_data_dir}
        return 0
    fi

    if [[ "_flow_1" == "$1" ]]; then
        if ! _source_w1_isf ${d_name}/_tst/_flow_tst.sh.v1; then
            _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : '_source_w1_isf ${d_name}/_tst/_flow_tst.sh.v1' : ${hint} : return 1"
            cd $PPWD
            return 1
        fi
    fi

    if [[ "_hie_m" == "$1" ]]; then
        more ${fn_hie_file}
        cd $PPWD
        return 0
    fi

    if [[ "_hie_e" == "$1" ]]; then
        _edit ${fn_hie_file}
        cd $PPWD
        return 0
    fi

    # hint="\$1: \$2: "
    if _isn_from ${NARGS} 1 2 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND '2' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    #* DEBAG CNTL
    local di=
    if [ -n "$2" ]; then
        if [ "$2" == "_i" ]; then
            di=1
        else
            di=0
        fi
    else
        di=0
    fi

    #[[ptr_path]]
    # ! ptr_path
    local ptr_path="$1"
    ptr_path="$(_abs_path "${PPWD}" "ptr_path")"

    #* [ $di -eq 1 ] && echo "info"

    #* standart echo fl
    # _st_exit "in fs= file://${} , line=${LINENO}, EXEC: ${FNN} $* : 'SIGN_STR' (\$N) : 'file://${}' : ${hint} : return 1"
    # cd "$PPWD" || echo "EXEC_FAIL : 'cd $PPWD' :: return 0|1" >&2
    # return 1

    #* greeting
    [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args
    local md_file=${ptr_path}

    #* check cntl

    #* inname cntl

    toc2f_before_return() {
        :
    }

    #* define local variables

    #? ----- START toc2f body_flow -----

    local md_file_toc2f_stl0=$(dirname ${md_file})/_$(basename ${md_file})_toc2f_stl0

    cp ${md_file} ${md_file_toc2f_stl0}
    # cp ${md_file} ${md_file}.toc2f_stl0

    local str=
    local head_str=
    local num_str=
    local head_anc=
    local rnd_num=
    local ins_toc=
    local deep_str=
    local deep_num=
    local head_anc_free=
    local ins_anc=

    local num_toc=$(grep -E -n '<!-- TOC toc2f_stl0 -->' ${md_file} | grep -Eo '^[^:]+')
    echo -e "${GREEN}\$num_toc = '$num_toc'${NORMAL}"

    local curr_num=0

    IFS=$'\n'
    for str in $(grep -E -n '(^# |^## |^### |^#### |^##### |^###### )' ${md_file}); do
        echo -e "${GREEN}\$curr_num = '$curr_num'${NORMAL}"
        head_str="${str#*:}"
        num_str="${str%%:*}"
        head_anc=$(
            echo "$head_str" >$TMP/ggg
            sed -r 's/(.*)\[(.*)\]\(.*\)(.*)/\1[\2]/' $TMP/ggg
            rm $TMP/ggg
        )

        # head_anc=${head_anc//[~,%,&,*,(,),\",\`,$,@,<,>,|,-]/}

        num_toc=$((1 + num_toc))
        num_str=$((curr_num + num_str + 1))

        #! строка #{n-1}
        deep_str=${head_anc%#*}
        deep_num=${#deep_str}
        echo -e "${GREEN}\$deep_num = '$deep_num'${NORMAL}"
        head_anc_free=${head_anc##*#}

        rnd_num=$(_rnd2e)
        ins_anc="<a id=\"$rnd_num\"></a>"

        ins_toc="- <a href="#$rnd_num">$head_anc_free</a>"
        # ins_toc="- [$head_anc_free](#$rnd_num)"

        for ((i = 0; i < ${deep_num}; i++)); do
            ins_toc="  ${ins_toc}"
        done

        echo -e "${GREEN}\$ins_toc = '$ins_toc'${NORMAL}"

        echo -e "${HLIGHT}--- sed -i '${num_toc}i \ ${ins_toc}' ---${NORMAL}"

        eval "sed -i '${num_toc}i\ ${ins_toc}' ${md_file}"

        echo -e "${HLIGHT}--- sed -i '${num_str}i \ ${ins_anc}' ---${NORMAL}"

        eval "sed -i '${num_str}i\ ${ins_anc}' ${md_file}"

        curr_num=$((curr_num + 2))
    done

    unset IFS

    # read -p 1

    #* {{fn_sh_body}}

    #? ----- END toc2f body -----

    toc2f_before_return
    cd ${PPWD}
    return 0

}

cd "${idir}"
unset filename
#{post_fn}
