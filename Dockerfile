FROM crystallang/crystal:0.27.0

WORKDIR /tmp/build
ADD . /tmp/build

RUN shards build --production

# Copy build product to runtime
RUN mkdir -p /opt/app && cp /tmp/build/bin/codacy-ameba /opt/app

# Cleanup build source
RUN rm -rf /tmp/build

# Configure user
RUN adduser --uid 2004 --disabled-password --gecos ",,," docker
RUN ["chown", "-R", "docker:docker", "/opt/app"]
USER docker

ENTRYPOINT ["/opt/app/codacy-ameba"]
