FROM fluent/fluentd
COPY fluent.conf /etc/fluent/fluent.conf

RUN fluent-gem install fluent-plugin-aws-elasticsearch-service

ENV PORT=24224
ENV PREFIX=logstash

CMD ["fluentd"]