FROM ubuntu:20.04

EXPOSE 8888/tcp

WORKDIR /app

COPY ReverseProxy .

COPY entrypoint.sh /

RUN chmod +x ReverseProxy && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]