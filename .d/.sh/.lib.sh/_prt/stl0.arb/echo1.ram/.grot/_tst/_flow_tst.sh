#!/usr/bin/env bash
filename=${ST_RC_D_PATH}/.d/.arb/lib0.arb/echo1.ram/.grot/_tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_fasf456="$(dirname ${filename})"
cd "${idir_fasf456}" || {
    echo "${idir_fasf456} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >${idir_fasf456}/res

# echo "echo0 >${idir_fasf456}/res" >&2
echo0 >${idir_fasf456}/res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
