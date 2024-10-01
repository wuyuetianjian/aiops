
FROM golang:1.21 AS builder
WORKDIR /src
COPY ./package .
RUN go mod tidy && CGO_ENABLED=0 go build -o /bin/package ./main.go

FROM alpine:3.20.2
COPY --from=builder /bin/package /bin/ttdk
CMD ["/bin/ttdk"]