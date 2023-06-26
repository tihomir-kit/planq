function nmaprecon_f { nmap -sV -sC --min-rate 5000 $1; }
alias nmaprecon=nmaprecon_f

function trgtrecon_f { nmap -sV -sC --min-rate 5000 trgt; }
alias trgtrecon=trgtrecon_f

function nmapallports_f { nmap -p- $1; }
alias nmapallports=nmapallports_f

function trgtallports_f { nmap -p- trgt; }
alias trgtallports=trgtallports_f