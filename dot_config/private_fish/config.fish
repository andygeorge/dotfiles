set -x PATH $PATH /home/andygeorge/private/_dev/bin/
#ssh-add -k ~/.ssh/k
#ssh-agent
clear

#set -x PATH $HOME/.rbenv/bin $PATH
#rbenv init - | source

# golang setup
set -x PATH $PATH /usr/local/go/bin
set -x PATH $PATH /home/andygeorge/go/bin
set -x PATH $PATH /home/andygeorge/bin

# homebrew setup
set -x PATH $PATH /home/linuxbrew/.linuxbrew/bin

# chezmoi
set -x EDITOR vim

function fish_greeting
    fortune
end

if status is-interactive
    atuin init fish | source
end
