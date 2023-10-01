source ~/my_data/planq/.bash/bash_fzf

# Unlimited bash history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%Y/%m/%d %T] "
# This writes to the history file after each command instead of at the end of the shell session
shopt -s histappend

# Append a few things to PATH
export PATH=$PATH:~/my_data/planq/scripts:~/my_data/planq/memos:~/go/bin:~/.fzf/bin

alias rebash='. ~/.bashrc'
alias reinit='~/my_data/user_init; rebash'
alias pyserve='px-pyserve'
alias pysmtp='px-pysmtp'
alias revshell='px-revshell'
alias hostes='px-hosts'
alias hostrgt='px-hosts-set-target'

# Auto-download and prepare a bunch of tools in the tools folder
px-download-bin-tools > /dev/null 2>&1 &
disown # Tell the shell to forget about the previous job, don't send notifications to terminal

hostrgt 10.129.98.243 snoopy mail.snoopy.htb mm.snoopy.htb