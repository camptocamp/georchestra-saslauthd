FROM debian:bookworm

RUN  \
    apt-get -q -y update && \
    apt-get install -q -y sasl2-bin && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD [ "saslauthd", "-a", "ldap", "-d", "-c", "-m", "/var/run/saslauthd"]
