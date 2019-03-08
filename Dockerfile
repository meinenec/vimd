FROM alpine

RUN apk add vim

COPY .vim /root/.vim
COPY .vimrc /root/.vimrc
COPY scripts/startup.sh /scripts/startup.sh

WORKDIR /tmp

ENTRYPOINT sh /scripts/startup.sh
