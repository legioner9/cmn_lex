#!/bin/bash

fn_vethhg5231vdsf4gfvs1241() {

	DDir=$(pwd)
	# aer="aer_foe"
	aer="cmn_lex"
	hrepo="gf"

	if [[ "$1" == "-h" ]]; then
		echo -e "
	that :: ${HOME}/$aer/.d/.sh/rpo2git.sh
	help info ::
	\$1 
		-h :: echo this help
		-i :: init flow first push this repo to $hrepo - that head_repo=hrepo
			git remote add $hrepo git@gitflic.ru:legioner9/$aer.git
			git push $hrepo master			
	"
		return 0
	fi

	if [[ "$1" == "-i" ]]; then
		echo -e "
	that :: ${HOME}/$aer/.d/.sh/rpo2git.sh
	-i :: init flow first push init_commit this repo to $hrepo - that head_repo=hrepo
		git remote add $hrepo git@gitflic.ru:legioner9/$aer.git
		git push $hrepo master
	"
		read -p "^C refuse that flow?"
		git remote add $hrepo git@gitflic.ru:legioner9/$aer.git
		git push $hrepo master
		return 0
	fi

	cd "$HOME/$aer"

	git remote add gh git@github.com:legioner9/$aer.git
	git remote add gf git@gitflic.ru:legioner9/$aer.git
	git remote add alt ssh://forgejo@altlinux.space/legioner9/$aer.git

	lfoe_this_dir_git2e || {
		echo -e "${ECHO_RET1}in file://$HOME\$aer\.d\.sh\rpo2git.sh , line=${LINENO}  EXEC : '[[ $(lfoe_this_dir_git2e) == $HOME/aer_foe ]]' in $(pwd), 'RESUME :: $(pwd) IS_NOT git dir' return 1${NRM}" >&2
		return 1
	}

	git pull $hrepo master || {
		echo -e "${ECHO_RET1}in file://$HOME\$aer\.d\.sh\rpo2git.sh , line=${LINENO} :: EXEC : 'git pull gf master', 'RESUME :: gf ERROR' return 1${NRM}" >&2
		return 1
	}

	cd "$HOME/$aer"

	if [[ -n "$(git status -s)" ]]; then

		git add .
		git commit -m "<>"
		git push gf master
		git push alt master
		git push gh master

	else
		echo "gs is NULL"
	fi

	cd ${DDir}

}

fn_vethhg5231vdsf4gfvs1241 $@
