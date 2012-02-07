init:
	git submodule init
	git submodule update
	ln -nfs css3/css-3.snippets .vim/snippets/css-3.snippets

update:
	git submodule foreach git checkout master
	git submodule foreach git pull
