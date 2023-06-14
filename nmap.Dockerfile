FROM alpine:latest

RUN apk add nmap nmap-scripts

ENTRYPOINT ["/usr/bin/nmap"]