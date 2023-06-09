
export VAULT_ADDR=https://....
vault login
vault kv get secret/infrastructure/ops/ssh/jenkins-deploy-key-2021

## Get contents of policy
vault policy read secret-ops-rundeck

# List AppRoles
vault list auth/approle/role

# View approle settings
vault read auth/approle/role/rundeck



vault write auth/approle/role/dv-rundeck token_policies="secret-dv-rundeck" token_ttl=30m token_max_ttl=1h