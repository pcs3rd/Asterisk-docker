/bin/sh
apk add --update --no-cache --quiet  asterisk asterisk-sample-config >/dev/null
mkdir -p /var/spool/asterisk/fax
chown -R asterisk: /var/spool/asterisk

rm -rf /var/cache/apk/* /tmp* /var/tmp/*
