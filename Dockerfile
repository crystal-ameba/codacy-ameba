FROM alpine:3.8 as builder
RUN apk add crystal shards openssl-dev yaml-dev musl-dev make
WORKDIR /tmp/build
ADD . /tmp/build
RUN shards build --production

FROM alpine:3.8
RUN apk add --update openssl yaml pcre gc libevent libgcc
ADD docs /docs
RUN mkdir -p /opt/app
COPY --from=builder /tmp/build/bin/codacy-ameba /opt/app
# Configure user
RUN adduser --uid 2004 --disabled-password --gecos ",,," docker
RUN ["chown", "-R", "docker:docker", "/docs"]
RUN ["chown", "-R", "docker:docker", "/opt/app"]
USER docker

ENTRYPOINT ["/opt/app/codacy-ameba"]
