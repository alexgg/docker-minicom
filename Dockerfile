FROM alpine:latest
RUN apk add --no-cache minicom
ENV BAUDRATE 115200
COPY minirc.dfl /root/.minirc.dfl
CMD minicom -D /dev/minicom -b ${BAUDRATE}
