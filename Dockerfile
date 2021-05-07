FROM --platform=$BUILDPLATFORM golang:1.16 as build
ARG TARGETOS
ARG TARGETARCH
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -a -o app .

FROM --platform=$TARGETPLATFORM alpine:latest
RUN apk --no-cache add ca-certificates
COPY --from=build app/app .
CMD ["./app"]