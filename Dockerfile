FROM alpine:3.12

RUN apk add --no-cache curl jq

COPY check /opt/resource/check
COPY in    /opt/resource/in
COPY out   /opt/resource/out
RUN chmod +x /opt/resource/out /opt/resource/in /opt/resource/check
