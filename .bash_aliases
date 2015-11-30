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

# folder navigation
#-----------------------------------------------
alias cdubc='cd "/home/derek/Dropbox/Work/UBC Winter 2015"'
alias cdblog='cd "/home/derek/projects/dchanman.github.io/_posts/blog"'

# Utility shortcuts
#----------------------------------------------
alias jekyll-serve='bundle exec jekyll serve'
alias rgrep='grep -r --colour'
alias pair-mouse='sudo ltunify -d /dev/hidraw1 pair'
alias goodbye='sudo shutdown -P now'
alias pls='sudo $(history -p !!)'
