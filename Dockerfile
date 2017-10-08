FROM alpine

RUN apk update && apk upgrade
RUN apk add --update --no-cache curl bind-tools

RUN adduser -D networker
WORKDIR /home/networker
USER networker

CMD []
