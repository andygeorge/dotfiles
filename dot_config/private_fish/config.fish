set -x PATH $PATH /home/andygeorge/private/_dev/bin/
#ssh-add -k ~/.ssh/k
#ssh-agent
# clear

#set -x PATH $HOME/.rbenv/bin $PATH
#rbenv init - | source

set -x PATH $PATH /home/andygeorge/go/bin
set -x PATH $PATH /home/andygeorge/bin
set -x PATH $PATH /home/andygeorge/piper
set -x PATH $PATH /home/andygeorge/.cargo/bin
set -x PATH $PATH /home/andygeorge/.pulumi/bin
set -x PATH $PATH ~/go/bin
set -x PATH $PATH ~/bin
set -x PATH $PATH ~/.cargo/bin
set -x PATH $PATH ~/.pulumi/bin
set -x PATH $PATH ~/Sync/_dev/bin/
set -x PATH $PATH ~/.local/bin
set -x PATH $PATH /usr/local/go/bin
set -x PATH $PATH /usr/local/node/bin
set -x PATH $PATH ~/repos/ente/mobile/thirdparty/bin
set -x PATH $PATH /opt/nvim/

# homebrew setup
set -x PATH $PATH /home/linuxbrew/.linuxbrew/bin

# LM Studio CLI (lms)
set -gx PATH $PATH /home/andygeorge/.lmstudio/bin

# chezmoi
set -x EDITOR vi

function fish_greeting
    fortune
	fastfetch || neofetch
	# ww # would be nice to output weather? but maybe not EVERY term...
end

function ll --wraps=ls --wraps=exa --description 'List contents of directory using long format'
		exa --long --header --accessed --git -a $argv
end

function ls --wraps=exa --description 'Use exa instead of ls'
	exa --header --accessed --git $argv
end

function cll
  clear; ll
end

function qq --description 'run ollama'
	ollama run mistral-small:24b
end
function qqq --description 'kill ollama'
	ollama stop mistral-small:24b
end

function ii --description 'run ollama'
	ollama run llama2-uncensored:latest
end
function iii --description 'run ollama'
	ollama stop llama2-uncensored:latest
end

bash -e -c 'eval "$(ssh-agent -s)"'
