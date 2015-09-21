#!/bin/bash

# emacs: use the -nw variant by default
#-----------------------------------------------
alias emacs='emacs -nw'
alias emacs-w='emacs'

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
alias jekyll-build-and-serve='bundle exec jekyll build && bundle exec jekyll serve'
alias rgrep='grep -r --colour'
alias pair-mouse='sudo ltunify -d /dev/hidraw1 pair'
