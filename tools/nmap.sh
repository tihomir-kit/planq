# Add a host to /etc/hosts
function nmaprecon { nmap -sV -sC --min-rate 5000 $1; }
export -f nmaprecon

function trgtrecon { nmap -sV -sC --min-rate 5000 trgt; }
export -f trgtrecon

function nmapallports { nmap -p- $1; }
export -f nmapallports

function trgtallports { nmap -p- trgt; }
export -f trgtallports