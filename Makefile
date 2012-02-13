init:
	git submodule init
	git submodule update
	ln -nfs css3/css-3.snippets .vim/snippets/css-3.snippets
	ln -nfs bem/javascript-bem.snippets .vim/snippets/javascript-bem.snippets

update:
	git submodule foreach git checkout master
	git submodule foreach git pull
