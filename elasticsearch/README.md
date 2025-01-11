docker stack deploy -c elasticsearch/elasticsearch.stack.yml elasticsearch

curl -XGET http://localhost:9200 -u elastic:TdptwLko5fGX6THYSnMtHFUSh0SYltT/pncvdxjyj60g=


curl -XGET "http://<elasticsearch_host>:9200/_cat/indices?v" -u elastic:<senha>
curl -XGET "http://localhost:9200/_cat/indices?v" -u elastic:TdptwLko5fGX6THYSnMtHFUSh0SYltT/pncvdxjyj60g=
