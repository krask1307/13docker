FROM alpine:latest
ENV PYTHONUNBUFFERED=1

RUN apk update \
    && apk upgrade \
    && apk add --no-cache python3 py-pip bash

COPY http_server.py /tmp/http_server.py
COPY index.html /tmp/index.html

WORKDIR /tmp

CMD ["python3", "/tmp/http_server.py"]

EXPOSE 8888
