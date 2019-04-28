FROM golang:1.12.4-alpine

RUN apk add --no-cache curl git make protobuf protobuf-dev openssh
RUN curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/v0.5.1/dep-linux-amd64 && chmod +x /usr/local/bin/dep
RUN go get -u golang.org/x/lint/golint
RUN apk add --no-cache gcc musl-dev
RUN go get github.com/mitchellh/gox
