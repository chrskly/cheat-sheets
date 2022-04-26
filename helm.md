# Helm

## Get list of versions available for chart
```
helm search repo <reponame>/<chartname> --versions
```

## Get all values
```
helm show values <chartname>
```

## Error: UPGRADE FAILED: another operation (install/upgrade/rollback) is in progress
```
helm history <release> --namespace <namespace>
helm rollback <release> <revision> --namespace <namespace>
```
