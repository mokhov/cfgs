init:
	git submodule init
	git submodule update
	ln -nfs .vim/snippets/css3/css-3.snippets .vim/snippets/css-3.snippet

update:
	git submodule foreach git checkout master
	git submodule foreach git pull
