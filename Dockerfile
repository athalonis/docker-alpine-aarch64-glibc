#inspired by https://github.com/chrisanthropic/docker-alpine-rpi-glibc
FROM aarch64/alpine

RUN apk add curl && \
    curl -Lo glibc-2.26-r1.apk https://raw.githubusercontent.com/athalonis/docker-alpine-rpi-glibc-builder/master/glibc-2.26-r1.apk && \
    curl -Lo glibc-bin-2.26-r1.apk https://raw.githubusercontent.com/athalonis/docker-alpine-rpi-glibc-builder/master/glibc-bin-2.26-r1.apk && \
    curl -Lo glibc-i18-2.26-r1.apk https://raw.githubusercontent.com/athalonis/docker-alpine-rpi-glibc-builder/master/glibc-i18-2.26-r1.apk && \
    apk add --allow-untrusted *.apk && \
    rm *.apk
