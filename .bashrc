alias rebash='. ~/.bashrc'
alias reinit='~/my_data/user_init; rebash'

for file in ~/my_data/planq/scripts/*
do
  if [[ -f $file ]]; then
    source $file
  fi
done

export PATH=$PATH:~/go/bin # Append /go/bin to PATH

alias pyserve='python3 -m http.server 8080'
alias revshell='nc -nlvp 1337'

downprep > /dev/null 2>&1 &