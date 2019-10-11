
# Environment isolation
```
puppet generate types --environment <environment name>
```

# Check ERB syntax
```
erb -x -T '-' templates/changedtemplate.erb | ruby -c
```
