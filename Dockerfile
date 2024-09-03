FROM dcr.zexi.me/library/docker:latest

RUN sed -i 's#https\?://dl-cdn.alpinelinux.org/alpine#https://mirrors.tuna.tsinghua.edu.cn/alpine#g' /etc/apk/repositories \
    && apk add --no-cache rsync \
    && mkdir -p /root/.ssh \
    && chmod 600 /root/.ssh
