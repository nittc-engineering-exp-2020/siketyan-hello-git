FROM alpine:3.12 AS builder
WORKDIR /src
COPY . .
RUN apk add --no-cache gcc make libc-dev
RUN make

FROM scratch
COPY --from=builder /src/bin /bin
ENTRYPOINT ["/bin/hello"]
