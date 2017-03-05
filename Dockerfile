FROM golang:alpine

# install curl
RUN apk update && \
    apk add curl && \
    apk add git && \
    apk add openssh-client && \
    apk add make

# install Glide
RUN go get -u github.com/Masterminds/glide
