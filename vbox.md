# VirtualBox

## Port forwarding
```
VBoxManage modifyvm "VM name" --natpf1 "guestssh,tcp,,2222,,22"
VBoxManage modifyvm "VM name" --natpf1 delete "guestssh"
```

## Move VM
```
vboxmanage clonevm --mode all --basefolder /new/path/ --register <vm-to-clone>
```

## Rename VM
```
vboxmanage modifyvm <old-name> --name <new-name>
```

## Change directory where vms are stored
```
vboxmanage setproperty machinefolder /path/to/directory/
vboxmanage list systemproperties | grep folder
```
