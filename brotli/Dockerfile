FROM alpine:3.7 AS build

ENV BROTLI_VERSION=v1.0.4

WORKDIR /

RUN apk add --no-cache bash git alpine-sdk 
RUN git clone https://github.com/google/brotli
RUN cd brotli && git checkout $BROTLI_VERSION
RUN cd brotli && ./configure 
RUN cd brotli && make 

FROM alpine:3.7
COPY --from=build /brotli/bin/brotli /usr/local/bin/
ENTRYPOINT ["brotli"]
