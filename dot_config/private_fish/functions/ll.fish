function ll --wraps=ls --wraps=exa --description 'List contents of directory using long format'
    # ls -lh $argv
		exa -a --long --header --accessed --git $argv
end
