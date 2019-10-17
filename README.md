# fluentd-aws-elasticsearch-service
Fluentd container for AWS Elasticsearch Service

## Environment variables
```
- ES_URL : elasticsearch service url (required)
- ES_REGION : elasticsearch service region (required)
- ES_KEY : aws access key id (required)
- ES_SECRET : aws secret access key (required)
- PORT : fluentd source port (option, default : 24224)
- PREFIX : elasticsearch service logstash prefix (option, default : logstash)
```

## Docker Run

1. Default
``` bash
docker run -d -p 24224:24224 --name fluentd-aws-es \
    -e ES_URL=https://vpc-es-xxxxxxxxxxxx.us-east-1.es.amazonaws.com \
    -e ES_REGION=us-east-1 \
    -e ES_KEY=xxxxx \ # aws access key id
    -e ES_SECRET=xxxxx \ # aws secret access key
    gnokoheat/fluentd-aws-es
```

2. Port change
``` bash
docker run -d -p 30000:30000 --name fluentd-aws-es \
    -e ES_URL=https://vpc-es-xxxxxxxxxxxx.us-east-1.es.amazonaws.com \
    -e ES_REGION=us-east-1 \
    -e ES_KEY=xxxxx \ # aws access key id
    -e ES_SECRET=xxxxx \ # aws secret access key
    -e PORT=30000
    gnokoheat/fluentd-aws-es
```
