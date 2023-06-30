function installnuclei_f {
  sudo apt install -y docker.io
  sudo docker pull projectdiscovery/nuclei:latest
}
alias installnuclei=installnuclei_f

function nucleispray_f {
  sudo docker run projectdiscovery/nuclei:latest -u $1
}
# Add "trgt" host IP to /etc/hosts
alias nucleispray=nucleispray_f