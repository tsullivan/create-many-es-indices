#!/bin/bash
for i in $(seq -f "%04g" 0 500); do
  echo item: $i
  curl -XPUT "http://admin:notsecure@localhost:9200/many-${i}"
  sleep 1
  echo
done
