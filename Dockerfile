FROM golang:1.8rc3-alpine

# install curl
RUN apk update && \
    apk add curl && \
    apk add git && \
    apk add openssh-client

# install Glide
RUN go get -u github.com/Masterminds/glide

# make sure git always uses ssh
COPY .gitconfig /root/.gitconfig
