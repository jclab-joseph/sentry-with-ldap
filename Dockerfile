FROM getsentry/sentry:22.11.0

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    gcc python-dev libldap2-dev libsasl2-dev libssl-dev libzbar-dev
RUN pip3 install sentry-auth-ldap
RUN apt-get remove -y \
    gcc python-dev libldap2-dev libsasl2-dev libssl-dev libzbar-dev
RUN apt-get clean autoclean && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

