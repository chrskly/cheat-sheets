
## Disable vg
vgchange -an <vgpath>

## Enable vg
vgchange -ay <vgpath>

## Import a hardware snapshot to a new vg
vgimportclone --basevgname vg-x /dev/diskx
