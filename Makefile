init:
	git submodule init
	git submodule update

symlinks:
	ln -nfs ../bundle/css-3.snippets/css-3.snippets .vim/snippets/css-3.snippets
	ln -nfs ../bundle/javascript-bem.snippets/javascript-bem.snippets .vim/snippets/javascript-bem.snippets
	pwd | xargs -i bash -c "ln -nfs {}/.vim ~/.vim"
	pwd | xargs -i bash -c "ln -nfs {}/.vimrc ~/.vimrc"

update:
	git submodule foreach git checkout master
	git submodule foreach git pull
