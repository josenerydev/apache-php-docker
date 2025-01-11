docker stack deploy -c kibana/kibana.stack.yml kibana

chmod 644 kibana.yml
sudo chown 1000:1000 kibana.yml

curl -u elastic:TdptwLko5fGX6THYSnMtHFUSh0SYltT/pncvdxjyj60g= -X POST "http://localhost:9200/_security/service/elastic/kibana/credential/token/kibana-token"
