#!/bin/bash

root_dir="${PLT_PATH}"/.d/.mul

fol_dir="${PLT_PATH}"/.d/.mul/nm_opi_/var

name_fn="05_TOSHIBA_EXT"

plt_pause "multyplay cr infs in ${fol_dir} function ${name_fn}"

cd ${fol_dir} || plt_exit "NOT_DIR : ${fol_dir}"
echo | cr_infn_ --_fn "${name_fn}" --_root_dir "${root_dir}"
