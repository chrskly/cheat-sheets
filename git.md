# Git

## To remove a submodule you need to:

Delete the relevant section from the .gitmodules file.
Stage the .gitmodules changes git add .gitmodules
Delete the relevant section from .git/config.
Run git rm --cached path_to_submodule (no trailing slash).
Run rm -rf .git/modules/path_to_submodule
Commit git commit -m "Removed submodule <name>"
Delete the now untracked submodule files
rm -rf path_to_submodule

## Search through history for string (a.k.a. pickaxe)
```
git log -Ssomestring
```

## Set email
```
git config --local --add user.email user@domain.com
```
