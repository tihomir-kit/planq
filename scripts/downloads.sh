function downprep_f {
  mkdir tools
  cd tools
  wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy64
  wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh
  wget https://github.com/carlospolop/PEASS-ng/releases/download/refs%2Fpull%2F260%2Fmerge/winPEASx64.exe
  wget https://github.com/int0x33/nc.exe/blob/master/nc64.exe?source=post_page-----a2ddc3557403----------------------
  wget https://raw.githubusercontent.com/BlackArch/webshells/master/php/php-reverse-shell.php -O reverse-shell.php
  cp ~/my_data/planq/tools/* .
  cd ..
}
# Download tools to be served over HTTP
alias downprep=downprep_f