FROM alpine:3.6

RUN apk update && apk add libressl git zsh nano vim curl rsync

ENV TERM xterm
ENV DISABLE_UPDATE_PROMPT="true"
ENV DISABLE_AUTO_UPDATE="true"

# run the installation script
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

WORKDIR /mnt

# start zsh
CMD [ "zsh" ]
