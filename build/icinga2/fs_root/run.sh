#!/usr/bin/env bash
set -e

/configure-icinga2.sh

icinga2 daemon
