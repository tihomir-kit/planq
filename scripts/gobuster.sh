function px-gobuster-pages_f {
  gobuster dir -w /usr/share/dirb/wordlists/common.txt -u $1 -k
}
# $1 = url
alias px-gobuster-pages=px-gobuster-pages_f

function bustextensions_f {
  px-gobuster-pages -u $1 -x $2
}
# $1 = url
# $2 = file extensions (comma-separated)
alias bustextensions=bustextensions_f

function px-gobuster-domains_f {
  gobuster vhost -w /opt/useful/SecLists/Discovery/DNS/subdomains-top1million-5000.txt -u $1 -k
}
# $1 = url
alias px-gobuster-domains=px-gobuster-domains_f