FROM golang:alpine3.18

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=https://localhost/api

RUN go build

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

USER appuser

CMD ["./server"]




