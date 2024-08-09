FROM golang:1.22

WORKDIR /12SprintFinal

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /12SprintFinal

CMD ["/12SprintFinal"] 