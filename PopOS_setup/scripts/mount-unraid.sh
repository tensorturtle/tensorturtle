# USAGE:
# ./mount-unraid name_of_share
echo "Make sure 'cifs-utils' is installed (sudo apt install cifs-utils)"

IP_ADDR="172.30.1.147"
sudo mkdir ~/unraid
cd ~/unraid
sudo mkdir $1_share
sudo mount -t cifs -o user=jason //$IP_ADDR/$1 ~/unraid/$1_share

echo "SUCCESS! '$1' share has been mounted to ~/unraid/$1_share."
echo "Use 'sudo umount ~/unraid/$1_share' to unmount drive"
