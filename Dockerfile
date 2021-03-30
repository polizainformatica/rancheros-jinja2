FROM alpine

LABEL com.pi2k Poliza Informatica 2000 MDS SL
LABEL maintainer Ruben Castro <rcastro@polizainformatica.com>
LABEL version v1.0.0
LABEL description Jinja2-Cli

COPY [ "./entrypoint.sh", "./README.md", "/app/" ]

RUN apk add --no-cache sudo python3 py3-pip && \
    pip3 install jinja2-cli[yaml] --no-cache && \
    chmod +x /app/entrypoint.sh && \
    addgroup -g 1100 rancher && \
    adduser -h /home/rancher -s /bin/sh -G rancher -u 1100 -D rancher

WORKDIR /home/rancher

USER rancher

ENTRYPOINT [ "/app/entrypoint.sh" ]

CMD [ "jinja2" ]