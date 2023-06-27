# $1 - file with hashes, 1 per line
function johnhashes_f {
  john -w=/usr/share/wordlists/rockyou.txt $1
}
alias johnhashes=johnhashes_f