#!/bin/bash

# emacs: use the -nw variant by default
#-----------------------------------------------
alias emacs='emacs -nw'
alias emacs-w='emacs'

# vim: pass ctrl-s through
#-----------------------------------------------
alias vim='vim_f'
vim_f()
{
	# We don't have ttyctl, so save terminal settings
    local STTYOPTS="$(stty --save)"
    stty stop '' -ixoff
    command vim "$@"
	# then restore terminal settings
    stty "$STTYOPTS"
}

# trash: move a folder or file to the trash
#-----------------------------------------------
trash() {
	echo -e "\e[31m'${@}' has been trashed.\e[0m"
	command mv "$@" /home/derek/.local/share/Trash
}

# ssh shortcuts
#-----------------------------------------------
alias sshece='ssh o6z8@ssh-ubuntu.ece.ubc.ca'
alias sshcpsc='ssh o6z8@remote.ugrad.cs.ubc.ca'
alias c='. cdls'

# folder navigation
#-----------------------------------------------
alias cdubc='cd "/home/derek/Dropbox/Work/ubc_winter_2016"'
alias cdblog='cd "/home/derek/projects/dchanman.github.io/_posts/blog"'

# Utility shortcuts
#----------------------------------------------
alias jekyll-serve='bundle exec jekyll serve'
alias rgrep='grep -r --colour'
alias pair-mouse='sudo ltunify -d /dev/hidraw1 pair'
alias goodbye='sudo shutdown -P now'
alias pls='sudo $(history -p !!)'
alias wifi-rescan='sudo iwlist wlp1s0 scan'
alias fix-bg='feh --bg-fill /usr/share/lxpanel/images/lubuntu-background.png'
alias notes='cd ~/projects/notes && jupyter notebook'
alias wine32='env WINEPREFIX=~/.wine32'
