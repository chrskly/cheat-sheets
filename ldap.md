# LDAP

## Search
ldapsearch -LLL -x -H "ldaps://ldap.whatever:636" -D "<username>" -W -b "DC=some,DC=domain"
