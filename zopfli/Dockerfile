FROM alpine:3.7 AS build

ENV ZOPFLI_VERSION=zopfli-1.0.1

WORKDIR /

RUN apk add --no-cache bash git alpine-sdk 
RUN git clone https://github.com/google/zopfli
RUN cd zopfli && git checkout $ZOPFLI_VERSION
RUN cd zopfli && make 

FROM alpine:3.7
COPY --from=build /zopfli/zopfli /usr/local/bin/
ENTRYPOINT ["zopfli"]
