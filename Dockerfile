FROM golang:1.14-alpine

RUN apk update && \
    apk upgrade && \
    apk add \
        git \
	     && \
	 rm -rf /var/cache/apk/*

RUN go get -u golang.org/x/lint/golint



FROM golang:1.14-alpine

ADD entrypoint.sh /entrypoint.sh
COPY --from=0 /go/bin/golint /go/bin/golint

ENTRYPOINT ["/entrypoint.sh"]
