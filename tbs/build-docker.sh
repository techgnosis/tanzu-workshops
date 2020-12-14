#! /usr/bin/env bash

set -euo pipefail

docker build -t harbor.lab.home/library/eduk8s-tbs:latest .
docker push harbor.lab.home/library/eduk8s-tbs:latest