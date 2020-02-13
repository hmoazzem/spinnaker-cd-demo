FROM golang:alpine as builder
WORKDIR /app
COPY . .
RUN go install github.com/hmoazzem/spinnaker-cd-demo
RUN chmod +x /go/bin/spinnaker-cd-demo

FROM alpine
COPY --from=builder /go/bin/spinnaker-cd-demo /server
EXPOSE 80
ENTRYPOINT ["sh" ]
CMD [ "-c", "/server" ]