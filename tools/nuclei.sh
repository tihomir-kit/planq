function nucleispray_f {
  sudo nuclei -u $1
}
# Add "trgt" host IP to /etc/hosts
alias nucleispray=nucleispray_f