FROM golang:alpine

# install curl
RUN apk update && \
    apk add curl && \
    apk add git

# install Glide
RUN curl https://glide.sh/get | sh