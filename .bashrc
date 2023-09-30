source .bash/bash_fzf

# Unlimited bash history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%Y/%m/%d %T] "
# This writes to the history file after each command instead of at the end of the shell session
shopt -s histappend


alias rebash='. ~/.bashrc'
alias reinit='~/my_data/user_init; rebash'

for file in ~/my_data/planq/scripts/*
do
  if [[ -f $file ]]; then
    source $file
  fi
done

export PATH=$PATH:~/go/bin # Append /go/bin to PATH

alias px-pyserve='python3 -m http.server 8081' # 8081 because burp is on 8080
alias px-revshell='nc -nlvp 1337'
alias px-hosts='sudo vim /etc/hosts'

# Auto-download and prepare a bunch of tools in the tools folder
px-download-bin-tools > /dev/null 2>&1 &
disown # Tell the shell to forget about the previous job, don't send notifications to terminal