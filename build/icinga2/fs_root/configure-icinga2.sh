#!/usr/bin/env bash

set -e
set -o pipefail

API_USER_CONF="/data/etc/icinga2/conf.d/icingaweb-api-user.conf"
if [ ! -f $API_USER_CONF ]; then
  sed "s/\$ICINGAWEB_ICINGA2_API_USER_PASSWORD/${ICINGAWEB_ICINGA2_API_USER_PASSWORD:-icingaweb}/" \
    /template/icingaweb-api-user.conf \
  > $API_USER_CONF
fi

ICINGADB_CONF="/data/etc/icinga2/features-enabled/icingadb.conf"
if [ ! -f $ICINGADB_CONF ]; then
  mkdir -p /data/etc/icinga2/features-enabled
  cp /template/icingadb.conf $ICINGADB_CONF
fi

# chown icinga:icinga /data/etc/icinga2 -R
# chown icinga:icinga /data/var/lib/icinga2 -R
