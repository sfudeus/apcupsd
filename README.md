# Apcupsd

This is just a simple packaged apcupsd on Debian.
It is meant to run in a kubernetes cluster on a machine with USB-connected apcupsd, possibly along side the apcupsd-exporter (e.g. docker.io/sfudeus/apcupsd_exporter).
Make sure to mount your config at `/etc/apcupsd/apcupsd.conf` or whatever you want to override at `/etc/apcupsd`.
