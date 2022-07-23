FROM alpine:3.15

LABEL maintainer="Dan Halverson daniel.m.halverson@gmail.com"

RUN apk add --no-cache openjdk8 openjdk11 openjdk17 maven nodejs npm zsh git && \
    adduser -D -s /bin/zsh -h /home/devuser -g "User" devuser && \
    echo "devuser:p@ssword1" | chpasswd

USER devuser
ADD scripts/installthemes.sh /home/devuser/installthemes.sh
ENV TERM xterm
ENV ZSH_THEME agnoster
ENV M2_HOME=/home/devuser

ENTRYPOINT /home/devuser/installthemes.sh; zsh