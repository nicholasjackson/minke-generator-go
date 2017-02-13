FROM golang:1.8rc3-alpine

# install curl
RUN apk update && \
    apk add curl && \
    apk add git

# install Glide
RUN go get -u github.com/Masterminds/glide

# make sure git always uses ssh
RUN echo "[url \"git@github.com:\"]
  insteadOf = https://github.com/
[url \"git@github.com:\"]
  pushInsteadOf = \"git://github.com/\"
[url \"git@github.com:\"]
  pushInsteadOf = \"https://github.com/\"" > .gitconfig

