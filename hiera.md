# Hiera

## Check yaml syntax
```
ruby -e "require 'yaml';puts YAML.load_file('./data.yaml')"
```

## Encypt hiera entries
```
eyaml encrypt -l 'variable::name' -s 'password'
```

