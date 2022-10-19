#!/bin/bash

sleep 10
/bin/bash -c '/usr/local/node_exporter/node_exporter --web.listen-address="localhost:9100"'
