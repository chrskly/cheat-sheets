# ssh

## start ssh agent
```
eval "$(ssh-agent -s)"
```

## Convert openssh format key to pem (updates in place)
```
ssh-keygen -p -N "" -m pem -f /path/to/key
```
