# Add a host to /etc/hosts
function madns { echo "$1 $2" | sudo tee -a /etc/hosts; }
export -f madns

function trgt { echo "$1 trgt" | sudo tee -a /etc/hosts; }
export -f madns