# SEE: https://medium.com/@Aircon/nmap-basic-port-scans-tryhackme-thm-c7c3361831f0 (for performance tuning)
# T0 and T1 to avoid IDS alerts
# T3 default if -T unspecified
# T4 often used during CTF's
# T5 possible packet loss and can compromise accuracy of the scan results

function px-nmap-recon_f { nmap -sV -sC -T4 $1; }
alias px-nmap-recon=px-nmap-recon_f

function px-nmap-all-ports_f { nmap -p- -T4 $1; }
alias px-nmap-all-ports=px-nmap-all-ports_f

# TODO: Add silent option