function px-john_f {
  john -w=/usr/share/wordlists/rockyou.txt $1
}
# $1 - file with hashes, 1 per line
alias px-john=px-john_f