FROM golang

LABEL maintainer="wuxiaojian<wuxiaojian@focusteach.com>"

ENV WS_ADDR "0.0.0.0:443"
EXPOSE 443


ENV GOPROXY=https://goproxy.io

RUN go get github.com/cespare/reflex github.com/aojianwu/focus-msg

WORKDIR $GOPATH/src/github.com/aojianwu/focus-msg
ENTRYPOINT ["/usr/local/bin/reflex"]
CMD ["-r", ".", "-s", "go", "run", "main.go"]



