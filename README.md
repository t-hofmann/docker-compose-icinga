# docker-compose Icinga stack

docker-compose configuration to start-up an Icinga stack containing
Icinga 2, Icinga Web 2 and Icinga DB.

## Usage

```bash
# start
docker compose up -d
# logs
docker compose logs [-f]
# stop
docker compose stop
```

### Service Defaults

#### Icinga Web
- port: `8080`
- user: `icingaadmin`
- pass: `icinga`

#### Icinga 2 API
- port: `5665`
- user: `icingaweb`
- pass: `icingaweb`

## Module: Dependency Visualization

Planned: https://github.com/visgence/icinga2-dependency-module


## Upgrading
### v1.1.0 to v1.2.0

**v1.2.0** deploys Icinga Web ≥ 2.11.0, Icinga 2 ≥ 2.13.4, Icinga DB ≥ 1.0.0 and Icinga DB Web ≥ 1.0.0.
The Icinga Director is also set up and its daemon started, all in a separate container.

The easiest way to upgrade is to start over, removing all the volumes and
therefore wiping out any configurations you have changed:

```bash
docker compose down --volumes
docker-compose pull
docker-compose up --build -d
```

### v1.0.0 to v1.1.0

**v1.1.0** deploys Icinga Web 2.9.0 and snapshots of Icinga 2, Icinga DB and Icinga DB Web.

The easiest way to upgrade is to start over, removing all the volumes and
therefore wiping out any configurations you have changed:

```bash
docker-compose down --volumes
docker-compose build --pull
docker-compose up -d
```
