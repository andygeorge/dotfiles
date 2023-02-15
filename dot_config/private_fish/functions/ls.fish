function ls --wraps=exa --description 'Use exa instead of ls'
	exa --header --accessed --git $argv
end
