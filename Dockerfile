FROM alpine:3.6

RUN apk update && apk add libressl git zsh nano vim curl rsync

# terminal colors with xterm
ENV TERM xterm

# set the zsh theme
ENV ZSH_THEME agnoster

# run the installation script
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# start zsh
CMD [ "zsh" ]
