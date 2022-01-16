FROM runmymind/docker-android-sdk:alpine-standalone

RUN chmod +x entrypoint.sh
COPY entrypoint.sh /usr/src/entrypoint.sh

RUN apk update && apk upgrade && \
    apk add gradle npm && \
    npm config set unsafe-perm true && \
    npm install -g cordova

ENTRYPOINT ["/usr/src/entrypoint.sh"]
