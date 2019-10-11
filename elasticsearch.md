# ElasticSearch

## Optimising
https://www.elastic.co/blog/how-many-shards-should-i-have-in-my-elasticsearch-cluster

## List all indices
```
curl 'localhost:9200/_cat/indices?v'
```

## Optimize an index
```
curl -XPOST 'http://localhost:9200/twitter/_optimize'
```

## Get cluster health
```
curl -XGET 'http://localhost:9200/_cluster/health?pretty=true'
```

## Delete some indices
```
for m in {01..09}; do for d in {01..31}; do echo "2015-$m-$d"; curl -XDELETE "http://localhost:9200/logstash-2015.$m.$d/"; echo; done; done
```

## Search
```
curl -s "localhost:9200/logstash-2018.01.30/_search?q=*:*"
```

## Storage usage
```
curl -XGET "localhost:9200/_cat/allocation?v"
```

## Blocked due to storage full
```
curl -H "Content-Type: application/json" -XPUT -d '{"index": {"blocks.read_only": false,"blocks.read_only_allow_delete": false}}' "http://localhost/_all/_settings"
```

https://www.datadoghq.com/blog/elasticsearch-unassigned-shards/

## Send log directly to logstash
```
cat logfile.log | nc logstash-server 9000
```

# Update settings for one index (fields limit)

```
PUT index_name/_settings
{
  "index.mapping.total_fields.limit": 1500
}
```

