alias reinit='~/my_data/user_init'

function madns { echo "$1 $2" | sudo tee -a /etc/hosts; }
export -f madns

echo 'test'