# Windows

## Folder with locked down perms
```
takeown /f "C:\path\to\folder" /r
icacls "C:\path\to\folder" /reset /T
```

## Network reset
```
ipconfig /all
ipconfig /flushdns
netsh winsock reset
```
devmgmt.msc -> disable/enable
