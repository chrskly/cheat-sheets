# MySQL

```
sudo mysql_install_db –-user=mysql –ldata=/var/lib/mysql
```

## Size of tables
```
SELECT table_name AS `Table`, round(((data_length + index_length) / 1024 / 1024), 2) `Size in MB` FROM information_schema.TABLES WHERE table_schema = "$DB_NAME";
```

## Generate MySQL password hash
```
mysql -NBe "select password('right')"
```

## Set Password
```
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('MyNewPass');
```

## Clone table schema
```
CREATE TABLE destination_table_name LIKE source_table_name;
```

## Copy rows from one table to another
```
INSERT INTO destination_table_name SELECT * FROM source_table_name;
```

## Empty table
```
TRUNCATE TABLE tablename
```

## Optimize
```
OPTIMIZE TABLE foo

OR

mysqlcheck -o tablename
mysqlcheck -o --all-databases -u root
```
