FROM alpine:3.19
RUN apk update && apk add --no-cache dovecot shadow
ADD dovecot-imap.conf /etc/dovecot/dovecot.conf
COPY run.sh /run.sh
EXPOSE 143
CMD /run.sh
