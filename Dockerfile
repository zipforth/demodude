FROM alpine:3.23.5
RUN apk add python3
COPY demodude .
EXPOSE 9999
CMD sh startlocal
