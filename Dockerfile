FROM golang:latest

LABEL maintainer="Petr Filippov <globallinkliberty@gmail.com>"

RUN go install golang.org/x/website/tour@latest
COPY ./content /go/pkg/mod/golang.org/x/website/tour@v0.0.0-20210616181959-e0d934b43647/content

EXPOSE 3999
CMD ["tour", "-http", "0.0.0.0:3999"]