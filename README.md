# fluentd-aws-elasticsearch-service
![GitHub](https://img.shields.io/github/license/gnokoheat/fluentd-aws-elasticsearch-service) ![Docker Pulls](https://img.shields.io/docker/pulls/gnokoheat/fluentd-aws-es) ![GitHub repo size](https://img.shields.io/github/repo-size/gnokoheat/fluentd-aws-elasticsearch-service) ![GitHub last commit](https://img.shields.io/github/last-commit/gnokoheat/fluentd-aws-elasticsearch-service)

Fluentd aggregation container for AWS Elasticsearch Service

![](https://github.com/gnokoheat/fluentd-aws-elasticsearch-service/blob/master/fluentd-es.png)

## Environment variables
```
- ES_URL : elasticsearch service url (required)
- ES_REGION : elasticsearch service region (required)
- ES_KEY : aws access key id (required)
- ES_SECRET : aws secret access key (required)
- PORT : fluentd source port (option, default : 24224)
- PREFIX : elasticsearch service logstash prefix (option, default : logstash)
```

## Usage

- Setting of Fluentd log driver (Docker log sender)
```
docker run --log-driver=fluentd --log-opt fluentd-address=fluentdhost:24224 ...
```
- Docker Run of Fluentd aggregation container (Docker log aggregator and input to ES)

1. Default setting
``` bash
docker run -d -p 24224:24224 --name fluentd-aws-es \
    -e ES_URL=https://vpc-es-xxxxxxxxxxxx.us-east-1.es.amazonaws.com \
    -e ES_REGION=us-east-1 \
    -e ES_KEY=xxxxx \ # aws access key id
    -e ES_SECRET=xxxxx \ # aws secret access key
    gnokoheat/fluentd-aws-es
```

2. Port change setting
``` bash
docker run -d -p 30000:30000 --name fluentd-aws-es \
    -e ES_URL=https://vpc-es-xxxxxxxxxxxx.us-east-1.es.amazonaws.com \
    -e ES_REGION=us-east-1 \
    -e ES_KEY=xxxxx \ # aws access key id
    -e ES_SECRET=xxxxx \ # aws secret access key
    -e PORT=30000
    gnokoheat/fluentd-aws-es
```
