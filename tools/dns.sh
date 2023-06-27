function madns_f {
  sudo sed -i "/$2/d" /etc/hosts; # Remove any existing entries so we don't have colliding duplicates
  echo "$1 $2" | sudo tee -a /etc/hosts;
}
# Add a host to /etc/hosts
alias madns=madns_f

function trgtdns_f {
  madns_f $1 trgt

  if [ -n "$2" ]; then
    madns_f $1 $2
  fi
}
# Add "trgt" host IP to /etc/hosts
alias trgtdns=trgtdns_f