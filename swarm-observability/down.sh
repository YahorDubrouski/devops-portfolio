#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

docker compose -f "$root/grafana/docker-compose.yaml" down
docker compose -f "$root/demo/docker-compose.yaml" down
docker compose -f "$root/loki/docker-compose.yaml" down
docker compose -f "$root/prometheus/docker-compose.yaml" down
