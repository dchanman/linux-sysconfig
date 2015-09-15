#!/bin/bash
alias emacs='emacs -nw'
alias emacs-w='emacs'

# trash: move a folder or file to the trash
#-----------------------------------------------
trash() {
	echo -e "\e[31m'${@}' has been trashed.\e[0m"
	command mv "$@" /home/derek/.local/share/Trash
}
