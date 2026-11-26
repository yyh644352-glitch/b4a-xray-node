FROM alpine:3.20
RUN apk add --no-cache curl unzip && curl -L -o /tmp/xray.zip https://github.com/XTLS/Xray-core/releases/download/v25.10.15/Xray-linux-64.zip && unzip /tmp/xray.zip -d /usr/local/bin/ && rm /tmp/xray.zip
COPY config.json /usr/local/etc/xray/config.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
