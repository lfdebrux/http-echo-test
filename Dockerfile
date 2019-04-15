FROM alpine

RUN apk add --update curl jq && rm -rf /var/cache/apk/*

COPY http-echo-test.sh /

CMD ["/http-echo-test.sh"]
