function ll --wraps=ls --wraps=exa --description 'List contents of directory using long format'
    # ls -lh $argv
		exa --long --header --accessed --git -a $argv
end
