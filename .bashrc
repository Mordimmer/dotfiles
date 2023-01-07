# Set colored terminal prompt as "[username@hostname location]$"
export PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]@\[\e[34m\]\h\[\e[m\] \[\e[35m\]\W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

# Niceities
alias cd..="cd .."
alias rm="rm -i"  # Interactive mode delete
alias home="cd ~/"
alias root="sudo su"
alias mkdir="mkdir -pv"  # Creates parent directories if needed
alias hist="history"
alias jobs="jobs -l"
alias path="echo -e ${PATH//:/\\n}"
alias ll="ls -lh"
alias ll="ls -lha"

# Neovim by default
alias vim="nvim"
alias vi="nvim"

# Power commands
alias shutdown="sudo shutdown -P now"

# color whenever possible.
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \

# Time
alias now="date +"%T""
alias nowtime=now
alias nowdate="date +\"%d-%m-%Y\""

# Networking
alias ports="netstat -tulanp"

# Updates
alias update="dnf -y check-update && sudo dnf -y upgrade"

# Vim like controls
set -o vi

# Changing folder without cd
shopt -s autocd
