# Postgresql

```
\dg+
select * from pg_roles;

icinga=# \du
                              List of roles
  Role name  |                   Attributes                   | Member of 
-------------+------------------------------------------------+-----------
 icinga      |                                                | {}
 pgsql       | Superuser, Create role, Create DB, Replication | {}
 pgsqlbackup |                                                | {}
 postgres    | Superuser                                      | {}

ALTER ROLE foo LOGIN


psql -d dbname -t -A -F"," -c "select * from users" > output.csv

ALTER DATABASE db RENAME TO newdb;
```
