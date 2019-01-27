FROM alpine:3.7

WORKDIR /
ADD . .

RUN apk update
RUN apk add su-exec \ 
    nodejs \
    make
RUN npm install
EXPOSE 8181
ENTRYPOINT [ "make", "all" ]    