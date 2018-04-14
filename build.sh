#!/bin/sh
mkdir -p /go/src/app/dist

go get github.com/mholt/caddy/caddy
go get github.com/caddyserver/builds
cd $GOPATH/src/github.com/mholt/caddy/caddy

go run build.go --goos=darwin --goarch=amd64

cp caddy /go/src/app/dist/caddy-mac

go run build.go --goos=windows --goarch=amd64

cp caddy.exe /go/src/app/dist/caddy-win.exe