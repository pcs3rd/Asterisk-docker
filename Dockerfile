FROM alpine:3.20

COPY ./Scripts /install

RUN chmod +x /install/install-asterisk.sh
RUN sh /install/install-asterisk.sh

EXPOSE  5060/udp 5060/tcp
ADD docker-entrypoint.sh /docker-entrypoint.sh 
ENTRYPOINT ["/docker-entrypoint.sh"]