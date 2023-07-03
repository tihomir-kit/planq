alias rebash='. ~/.bashrc'
alias reinit='~/my_data/user_init; rebash'

for file in ~/my_data/planq/tools/*
do
  if [[ -f $file ]]; then
    source $file
  fi
done

alias hakrawler=~/go/bin/hakrawler