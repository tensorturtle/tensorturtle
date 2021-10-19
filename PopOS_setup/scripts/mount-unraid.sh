# USAGE:
# ./mount-unraid name_of_share

# 'uid=1000,gid=1000' modifies the permissions to be writable by regular user (otherwise, only sudo works.
# to find uid and gid, use:
# 'id -u <user>
# 'id -g <user>

IP_ADDR="172.30.1.147"
sudo mkdir ~/unraid
cd ~/unraid
sudo mkdir $1_share
sudo mount -t cifs -o user=jason,uid=1000,gid=1000 //$IP_ADDR/$1 ~/unraid/$1_share

echo "SUCCESS! '$1' share has been mounted to ~/unraid/$1_share."
echo "Use 'sudo umount ~/unraid/$1_share' to unmount drive"
