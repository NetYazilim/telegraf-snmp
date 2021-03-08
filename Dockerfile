FROM telegraf:1.17.3-alpine
LABEL maintainer "Levent SAGIROGLU <LSagiroglu@gmail.com>"
RUN apk update && apk add --no-cache net-snmp ca-certificates && update-ca-certificates 
COPY mibs /usr/share/snmp/mibs
