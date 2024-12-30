#!/usr/bin/env bash
set -e

cd $(dirname $0)

docker compose down
docker compose build

sudo rm vols/icingaweb/* -rf
sudo rm vols/mysql/* -rf

docker compose up -d
docker compose logs -f
