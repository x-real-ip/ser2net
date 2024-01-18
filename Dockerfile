FROM --platform=linux/arm64/v8 docker.io/debian:sid-slim

COPY ./src/ /etc/

RUN apt-get update && apt-get install -y --no-install-recommends \
    ser2net \
    && rm -rf /var/lib/apt/lists/*

CMD echo -n "Starting " && ser2net -v && ser2net -d -c /etc/ser2net.conf
