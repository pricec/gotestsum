ARG BASE_IMAGE=golang:1.13.4-buster

FROM ${BASE_IMAGE}

ARG GOTESTSUM_VERSION=v0.3.5

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.21.8.0/s6-overlay-amd64.tar.gz /tmp/
RUN gunzip -c /tmp/s6-overlay-amd64.tar.gz | tar -xf - -C /

ENV GO111MODULE=on
RUN go get -u gotest.tools/gotestsum@${GOTESTSUM_VERSION}
