FROM golang:lastest

LABEL maintainer="wuxiaojian<wuxiaojian@focusteach.com>"

ENV HTTP_PORT 443

RUN go get github.com/cespare/reflex github.com/aojianwu/focus-msg

WORKDIR $GOPATH/src/github.com/aojianwu/focus-msg
ENTRYPOINT ["/usr/local/bin/reflex"]
CMD ["-r", ".", "-s", "go", "run", "main.go"]


