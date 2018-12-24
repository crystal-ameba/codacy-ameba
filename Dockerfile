FROM crystallang/crystal:0.27.0 as builder
WORKDIR /tmp/build
COPY . /tmp/build
RUN shards build --production

FROM ubuntu:16.04
RUN apt-get update && apt-get -y install libyaml-dev libevent-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
COPY docs /docs
COPY --from=builder /tmp/build/bin/codacy-ameba /opt/app/
# Configure user
RUN adduser --disabled-password --gecos "" docker
RUN ["chown", "-R", "docker:docker", "/docs"]
RUN ["chown", "-R", "docker:docker", "/opt/app"]
USER docker

ENTRYPOINT ["/opt/app/codacy-ameba"]
