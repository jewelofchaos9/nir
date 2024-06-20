## OVA files stored here
To upload ova to proxmox and create virtual machine execute:
`ansible-playbook ansible/playbooks/setup_vulnbox.yaml -i ansible/inventory.yaml --extra-vars vulnbox_path="$(pwd)/vulnboxes/${OVA_FILENAME}.ova" --extra-vars vulnbox_name="${VULNBOX_NAME}"`

