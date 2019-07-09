FROM curve25519xsalsa20poly1305/openvpn-socks5:latest

COPY aria2.patch /aria2-master/
COPY aria2-entrypoint.sh /usr/local/bin/

RUN apk add --no-cache --virtual .build-deps \
    	build-base autoconf automake libtool gettext-dev git \
	    gnutls-dev expat-dev sqlite-dev c-ares-dev cppunit-dev libunistring-dev \
    && cd / \
    && curl -sSL "https://github.com/aria2/aria2/archive/master.tar.gz" | tar xz \
    && cd /aria2-master \
    && patch -p1 < aria2.patch \
    && autoreconf -i \
    && ./configure \
       --prefix=/usr \
       --sysconfdir=/etc \
       --mandir=/usr/share/man \
       --infodir=/usr/share/info \
       --localstatedir=/var \
       --disable-nls \
       --with-ca-bundle=/etc/ssl/certs/ca-certificates.crt \
    && make -j 5 && make install \
    && cd / \
    && rm -rf /aria2-master \
    && apk del .build-deps \
    && apk add --no-cache libgcc libstdc++ gnutls expat sqlite-libs c-ares \
    && chmod +x /usr/local/bin/aria2-entrypoint.sh

ENV ARIA2_UP    ""
ENV SOCKS5_UP   /usr/local/bin/aria2-entrypoint.sh
