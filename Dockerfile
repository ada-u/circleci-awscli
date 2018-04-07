FROM alpine:3.6

ENV AWSCLI_VERSION "1.15.2"

RUN apk -v --update add \
        ca-certificates \
        python \
        py-pip \
        groff \
        less && \
    pip install --upgrade awscli==$AWSCLI_VERSION python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

VOLUME /app
WORKDIR /app
ENTRYPOINT ["aws"]
