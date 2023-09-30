function px-init_f {
  sudo apt update

  sudo apt install -y \
    fzf
}
alias px-init=px-init_f # Customize the system a little



function px-install-tools_f {
  sudo apt update

  sudo apt install -y \
    xrdp \
    sqlitebrowser \
    mongodb-database-tools \
    pwncat

  # Install Python tools
  pip3 install git-dumper

  # Install GO tools (line-by-line required becuase of some GO Install restrictions)
  go install -v github.com/hakluke/hakrawler@latest
  go install -v github.com/fullstorydev/grpcui/cmd/grpcui@latest
  go install -v github.com/jpillora/chisel@latest
  go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

  # go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
  # go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
  # go install -v github.com/projectdiscovery/katana/cmd/katana@latest
  # go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
}
alias px-install-tools=px-install-tools_f # Install a bunch of tools missing from the base image



function px-download-bin-tools_f {
  if [ -d "tools" ]; then
    # If tools folder already exists, assume this has already been done, don't do it again
    return
  fi

  mkdir tools
  cd tools
  wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy64
  wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh
  wget https://github.com/carlospolop/PEASS-ng/releases/download/refs%2Fpull%2F260%2Fmerge/winPEASx64.exe
  wget https://github.com/int0x33/nc.exe/blob/master/nc64.exe
  wget https://raw.githubusercontent.com/BlackArch/webshells/master/php/php-reverse-shell.php -O reverse-shell.php
  wget https://github.com/jpillora/chisel/releases/download/v1.7.7/chisel_1.7.7_linux_386.gz
  gzip -d chisel_1.7.7_linux_386.gz
  wget https://github.com/jpillora/chisel/releases/download/v1.7.7/chisel_1.7.7_linux_amd64.gz
  gzip -d chisel_1.7.7_linux_amd64.gz
  cp ~/my_data/planq/tools/* .
  cd ..
}
# Download tools to be served over HTTP
alias px-download-bin-tools=px-download-bin-tools_f # Download all the bin tools to be served over pyserve