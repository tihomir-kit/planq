# $1 = url
# $2 = file extensions (comma-separated)
function bustpages_f {
  gobuster dir -w /usr/share/dirb/wordlists/common.txt -u $1 -x $2
}
alias bustpages=bustpages_f

# $1 = url
function bustsubdomains_f {
  gobuster vhost -w /opt/useful/SecLists/Discovery/DNS/subdomains-top1million-5000.txt -u $1
}
alias bustsubdomains=bustsubdomains_f