# Redis


## Info
```
INFO
INFO memory
INFO keyspace
```

## Switch to DB 0
```
SELECT 0
```

# Print a random key from the current DB
```
RANDOMKEY
```

## Print the value for all matching keys
```
KEYS asdf*
```

## Print number of keys in DB
```
DBSIZE
```

## Print all keys for hash foobar
```
HKEYS foobar
```

## Set/get hash value
```
HSET myhash field1 "foobar"
HGET myhash field1
```

## Get all values from hash
```
HGETALL myhash field1
```
