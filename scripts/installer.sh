function instools_f {
  sudo apt install -y \
    httpx \
    xrdp \
    git-dumper \
    sqlitebrowser \
    mongodb-database-tools \
    redis-cli

  # Install GO tools (line-by-line required becuase of some GO Install restrictions)
  go install -v github.com/hakluke/hakrawler@latest
  go install -v github.com/fullstorydev/grpcui/cmd/grpcui@latest
  go install -v github.com/jpillora/chisel@latest
  go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

  # go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
  # go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
  # go install -v github.com/projectdiscovery/katana/cmd/katana@latest
  # go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
}
# Install a bunch of tools
alias instools=instools_f