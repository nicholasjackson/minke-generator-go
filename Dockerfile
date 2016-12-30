FROM golang:alpine

# install curl
RUN apk update && \
    apk add curl && \
    apk add git && \
    apk add openssh-client

# install Glide
RUN go get -u github.com/Masterminds/glide
