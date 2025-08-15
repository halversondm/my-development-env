FROM alpine:latest

LABEL maintainer="Dan Halverson daniel.m.halverson@gmail.com"

LABEL source="https://github.com/halversondm/my-development-env"

RUN apk add --no-cache openssh openjdk17 openjdk21 maven nodejs npm zsh git sudo shadow docker-cli gradle && \
    adduser -D -s /bin/zsh -h /home/devuser -G wheel devuser && \
    echo "devuser:p@ssword1" | chpasswd && \
    echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel && \
    adduser devuser wheel && \
    npm i --global yarn

USER devuser:wheel
WORKDIR /home/devuser

ADD --chown=devuser:wheel scripts/*.sh ./scripts/
ADD --chown=devuser:wheel zshrc .zshrc

ENV TERM=xterm

ENTRYPOINT ["./scripts/setup.sh"]

STOPSIGNAL SIGQUIT

CMD ["tail", "-f", "/dev/null"]