FROM golang:1.12-alpine

RUN apk --update --no-cache add git

COPY tq.go /go/src/tq/
COPY tq/. /go/src/tq/src/
WORKDIR /go/src/tq

RUN go get && \
      go build

CMD [ "tq" ]
