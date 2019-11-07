FROM alpine:3.9

RUN apk add bash --no-cache

WORKDIR /code
COPY addTail /code/addTail
COPY logtrack.sh /code/logtrack.sh

CMD ["bash"]