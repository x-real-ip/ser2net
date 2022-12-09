FROM docker.io/alpine:3

COPY ./src/ /etc/

RUN apk --no-cache add ser2net

CMD echo -n "Starting " && ser2net -v && ser2net -d -c /etc/ser2net.conf
