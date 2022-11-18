#!/bin/bash

# Log pipe error
NAMED_PIPED="/var/run/lighttpd-log.pipe"
rm -rf "$NAMED_PIPED" || true
mkfifo --mode 660 "${NAMED_PIPED}" || true
chown www-data.www-data "${NAMED_PIPED}"
echo "Named pipe: ($NAMED_PIPED) creation OK"
(cat ${NAMED_PIPED} > /proc/self/fd/2 || pkill lighttpd) &
#

exec $@