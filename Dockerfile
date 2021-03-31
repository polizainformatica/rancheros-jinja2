FROM python:3.8.8-alpine3.13

LABEL com.pi2k Poliza Informatica 2000 MDS SL
LABEL maintainer Ruben Castro <rcastro@polizainformatica.com>
LABEL version v1.0.1
LABEL description rancheros-jinja2-cli

RUN addgroup rancher && \
    adduser -h /home/rancher -s /bin/sh -G rancher -D rancher

WORKDIR /app
COPY [ "./entrypoint.sh", "./requirements.txt", "./" ]
RUN pip install --no-cache-dir -r requirements.txt

USER rancher

ENTRYPOINT [ "/app/entrypoint.sh" ]
CMD [ "-h" ]