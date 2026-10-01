#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

docker network inspect observability >/dev/null 2>&1 || docker network create observability

docker compose -f "$root/prometheus/docker-compose.yaml" up -d
docker compose -f "$root/loki/docker-compose.yaml" up -d
docker compose -f "$root/demo/docker-compose.yaml" up -d
docker compose -f "$root/grafana/docker-compose.yaml" up -d

echo "Grafana http://127.0.0.1:3000  (admin / admin)"
