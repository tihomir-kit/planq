function downprep_f {
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
alias downprep=downprep_f