function johnhashes_f {
  john -w=/usr/share/wordlists/rockyou.txt $1
}
# $1 - file with hashes, 1 per line
alias johnhashes=johnhashes_f