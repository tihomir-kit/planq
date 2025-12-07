source ~/planq/.bash/bash_fzf

# Unlimited bash history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%Y/%m/%d %T] "
# This writes to the history file after each command instead of at the end of the shell session
shopt -s histappend

# Append a few things to PATH
export PATH=$PATH:~/planq/scripts:~/planq/memos:~/go/bin:~/.fzf/bin

alias rebash='. ~/.bashrc'
alias reinit='~/planq/init.sh; rebash'
alias pyserve='px-pyserve'
alias pysmtp='px-pysmtp'
alias revshell='px-revshell'
alias hostes='px-hosts'
alias hostrgt='px-hosts-set-target'

# Make the autocomplete case-insensitive (auto corrects the casing)
bind 'set completion-ignore-case on'