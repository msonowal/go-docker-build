FROM golang:1.11.1-alpine

RUN apk add --no-cache curl git make protobuf protobuf-dev openssh
RUN curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/v0.5.0/dep-linux-amd64 && chmod +x /usr/local/bin/dep
RUN go get -u github.com/golang/lint/golint
RUN apk add --no-cache gcc musl-dev
