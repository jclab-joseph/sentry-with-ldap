FROM getsentry/sentry:21.8.0

RUN apt-get update && \
    apt-get install -y \
    gcc python-dev libldap2-dev libsasl2-dev libssl-dev libzbar-dev
RUN pip3 install sentry-ldap-auth
RUN apt-get remove -y \
    gcc python-dev libldap2-dev libsasl2-dev libssl-dev libzbar-dev
RUN apt-get clean autoclean && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

