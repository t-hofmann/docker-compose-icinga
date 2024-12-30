FROM icinga/icinga2

USER root

COPY ./fs_root/. /
RUN chown icinga:icinga /run.sh

USER icinga
