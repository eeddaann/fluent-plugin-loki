#!/bin/sh
docker run -d \
  -p 9880:9880 -v $(pwd)/development/conf:/fluentd/etc -v $(pwd)/lib/fluent/plugin:/etc/fluent/plugin -e FLUENTD_CONF=fluentd.conf \
  fluent/fluentd