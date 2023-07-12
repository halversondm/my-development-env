FROM alpine:3.18

LABEL maintainer="Dan Halverson daniel.m.halverson@gmail.com"

LABEL source="https://github.com/halversondm/my-development-env"

RUN apk add --no-cache openjdk8 openjdk11 openjdk17 maven nodejs npm zsh git sudo && \
    adduser -D -s /bin/zsh -h /home/devuser -G wheel devuser && \
    echo "devuser:p@ssword1" | chpasswd && \
    echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel && \
    adduser devuser wheel && \
    npm i --global yarn

USER devuser:wheel
WORKDIR /home/devuser

ADD --chown=devuser:wheel scripts/*.sh ./scripts/
RUN wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh || true
ENV TERM xterm
ENV M2_HOME=/development

ENTRYPOINT ./scripts/setup.sh; zsh