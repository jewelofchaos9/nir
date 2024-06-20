ovf_file_name=$(ls -l | grep ovf | tail -n 1 | awk '{print $9}');

num=$(qm list | tail -n 1 | awk '{print $1}');
num=$(($num + 1)); 

qm importovf $num $ovf_file_name local-lvm --format qcow2;

sed -i -e "s/name:.*/name: vm$num/g" "/etc/pve/qemu-server/$num.conf";
