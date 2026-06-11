#!/bin/bash

dir=${HOME}/REPOBARE/_repo/NBash/.arb/util/doxygen.ram/.grot/exa.d/doxy_v1.d

cd ${dir} || echo "FAIL cd ${dir}" >&2

cd poroject.doxy || echo "FAIL cd poroject.doxy" >&2

rm -r ${dir}/poroject.doxy/*

ls ${dir}/poroject.doxy
PROJECT_NUMBER=111
EXCLUDE_PATTERNS="*/docs/*"
EXTENSION_MAPPING="sh=C"
INPUT_FILTER="sed -n -f /home/st/.d/.cdn.d/doxygen-bash.sed --"
INPUT="/home/st/REPOBARE/_repo/NBash/.arb/util/doxygen.ram/.grot/exa.d/wolf-u.li.ru.d/poroject.ws"
RECURSIVE=YES
FILE_PATTERNS="*.c \
*.cc \
*.cxx \
*.cpp \
*.c++ \
*.java \
*.ii \
*.ixx \
*.ipp \
*.i++ \
*.inl \
*.idl \
*.ddl \
*.odl \
*.h \
*.hh \
*.hxx \
*.hpp \
*.h++ \
*.cs \
*.d \
*.php \
*.php4 \
*.php5 \
*.phtml \
*.inc \
*.m \
*.markdown \
*.md \
*.mm \
*.dox \
*.py \
*.pyw \
*.f90 \
*.f95 \
*.f03 \
*.f08 \
*.f18 \
*.f \
*.for \
*.vhd \
*.vhdl \
*.ucf \
*.qsf \
*.ice \
*.sh"
# doxygen ${dir}/Doxyfile
doxygen ${dir}/Doxyfile
yandex-browser ${dir}/poroject.doxy/html/index.html
