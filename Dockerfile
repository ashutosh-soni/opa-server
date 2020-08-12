FROM alpine:3.12.0
RUN apk add --no-cache bash
WORKDIR /opa-server
COPY opa config.yaml runner.sh /opa-server/
ENV ZS_OPA_SERVICE_URL="http://192.168.0.105:3000/api/v1"
CMD ["sh", "runner.sh"]
