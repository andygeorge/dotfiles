set -x PATH $PATH /home/andygeorge/private/_dev/bin/
#ssh-add -k ~/.ssh/k
#ssh-agent
clear

#set -x PATH $HOME/.rbenv/bin $PATH
#rbenv init - | source

set -x PATH $PATH /home/andygeorge/go/bin
set -x PATH $PATH /home/andygeorge/bin
set -x PATH $PATH /home/andygeorge/.cargo/bin
set -x PATH $PATH /home/andygeorge/.pulumi/bin
set -x PATH $PATH ~/go/bin
set -x PATH $PATH ~/bin
set -x PATH $PATH ~/.cargo/bin
set -x PATH $PATH ~/.pulumi/bin

# golang setup
set -x PATH $PATH /usr/local/go/bin

# homebrew setup
set -x PATH $PATH /home/linuxbrew/.linuxbrew/bin

# chezmoi
set -x EDITOR vi

function fish_greeting
    fortune
end
