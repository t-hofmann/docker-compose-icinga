#!/usr/bin/env bash
set -e

cd $(dirname $0)

for dir in ./vols/icinga2/etc/icinga2 ./vols/icinga2/var
do
    mkdir -p "$dir"
    chmod o+wt "$dir"
done
