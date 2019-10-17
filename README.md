# fluentd-aws-elasticsearch-service
Fluentd container for AWS Elasticsearch Service

## Docker Run
``` bash
docker run -d -p 24224:24224 --name fluentd-aws-es \
    -e ES_URL=https://vpc-es-xxxxxxxxxxxx.us-east-1.es.amazonaws.com \
    -e ES_REGION=us-east-1 \
    -e ES_KEY=xxxxx \
    -e ES_SECRET=xxxxx \
    gnokoheat/fluentd-aws-es
```
