function px-hosts-add_f {
  # TODO: If $1 or $2 is empty, show warning instead

  sudo sed -i "/$2/d" /etc/hosts; # Remove any existing entries so we don't have colliding duplicates
  echo "$1 $2" | sudo tee -a /etc/hosts;
}
# Add a host to /etc/hosts
alias px-hosts-add=px-hosts-add_f

function px-hosts-set-target_f {
  px-hosts-add_f $1 trgt

  if [ -n "$2" ]; then
    px-hosts-add_f $1 $2
    px-hosts-add_f $1 $2.htb
  fi
}
# Add "trgt" host IP to /etc/hosts
alias px-hosts-set-target=px-hosts-set-target_f