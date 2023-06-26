# Add a host to /etc/hosts
function madns_f { echo "$1 $2" | sudo tee -a /etc/hosts; }
alias madns=madns_f

# Add "trgt" host IP to /etc/hosts
function trgt_f {
  madns_f $1 trgt

  if [ -n "$2" ]; then
    madns_f $1 $2
  fi
}
alias trgt=trgt_f