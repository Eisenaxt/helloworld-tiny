FROM golang:1.18-alpine AS compile
WORKDIR /helloworld
COPY helloworld . 
RUN  go build 
FROM scratch
COPY --from=compile /helloworld/helloworld /
CMD ["/helloworld"]
