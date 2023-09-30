function px-nuclei-spray_f {
  sudo nuclei -u $1
}
# Add "trgt" host IP to /etc/hosts
alias px-nuclei-spray=px-nuclei-spray_f