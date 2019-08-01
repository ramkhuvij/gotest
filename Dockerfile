FROM golang:1.8-alpine
WORKDIR /go/src/testproject
COPY . .
EXPOSE 80
RUN go install -v ./...

CMD ["testproject"]
