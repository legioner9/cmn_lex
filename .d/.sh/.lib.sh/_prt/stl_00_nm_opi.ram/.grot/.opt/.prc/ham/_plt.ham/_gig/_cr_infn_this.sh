#!/bin/bash

root_dir="${PLT_PATH}"/.d/

fol_dir="${PLT_PATH}"/.d/.proc/.ham

# name_fn="05_TOSHIBA_EXT"

for name_fn in $(f2e ${fol_dir}/_gig/_name_fn.lst); do

    plt_pause "multyplay cr infs in ${fol_dir} function ${name_fn}"

    cd ${fol_dir} || plt_exit "NOT_DIR : ${fol_dir}"
    echo | cr_infn_ --_fn "${name_fn}" --_root_dir "${root_dir}"

done
