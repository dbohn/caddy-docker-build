FROM golang:1.10
WORKDIR /go/src/app
# COPY ./build.sh /go/src/app

# RUN chmod +x build.sh

CMD [ "sh", "-c", "./build.sh" ]
