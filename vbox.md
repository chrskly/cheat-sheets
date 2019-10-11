# VirtualBox

## Port forwarding
VBoxManage modifyvm "VM name" --natpf1 "guestssh,tcp,,2222,,22"
VBoxManage modifyvm "VM name" --natpf1 delete "guestssh"
