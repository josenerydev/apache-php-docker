docker build -t josenerydev/fluentd:latest .


docker stack deploy -c fluentd/fluentd.stack.yml logging
