FROM alpine:3.3
USER root
ENV PACKAGES "curl"
RUN apk add --update $PACKAGES && rm -rf /var/cache/apk/*
RUN curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
RUN chmod +x /usr/local/bin/ecs-cli
