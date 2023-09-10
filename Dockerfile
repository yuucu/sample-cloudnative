FROM golang:1.21.0 as builder
WORKDIR /app
COPY . .
RUN go build -o main main.go

FROM alpine
COPY --from=builder /app/main /usr/local/bin/app
CMD ["/usr/local/bin/app"]
