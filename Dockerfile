FROM registry:2

RUN mkdir /certs
COPY certs/* /certs/

ENV REGISTRY_HTTP_ADDR=0.0.0.0:443
ENV REGISTRY_HTTP_TLS_CERTIFICATE="/certs/domain.crt"
ENV REGISTRY_HTTP_TLS_KEY="/certs/domain.key"