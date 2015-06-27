FROM ubuntu:14.04
MAINTAINER Toomore Chiang <toomore0929@gmail.com>

ADD go1.4.2.linux-amd64.tar.gz .

ENV GOROOT /go
ENV GOPATH /gopath
ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH

RUN mkdir /gopath && apt-get update && apt-get dist-upgrade -y && \
    apt-get install -y git curl gcc tmux \
                       make ncurses-dev libtolua-dev exuberant-ctags && \
    ln -s /usr/include/lua5.2/ /usr/include/lua                      && \
    ln -s /usr/lib/x86_64-linux-gnu/liblua5.2.so /usr/lib/liblua.so  && \
    cd /tmp && \
    curl https://mirrors.kernel.org/debian/pool/main/v/vim/vim_7.4.712.orig.tar.gz > vim.tar.gz && \
    tar -xvf ./vim.tar.gz && \
    cd /tmp/vim-7.4.712/ && \
    ./configure --with-features=huge --enable-luainterp                    \
        --enable-gui=no --without-x --prefix=/usr                       && \
    make VIMRUNTIMEDIR=/usr/share/vim/vim74                             && \
    make install                                                        && \
    apt-get remove -y ncurses-dev                                       && \
    apt-get autoremove -y                                               && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN git clone --depth 1 https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN git clone --depth 1 https://github.com/toomore/toomore.vim.git ~/.vim/toomore.vim/ && \
    sh ~/.vim/toomore.vim/make_ubuntu.sh && \
    cp ~/.vim/toomore.vim/bashrc.ubuntu ~/.bashrc && \
    cp ~/.vim/toomore.vim/.gitconfig ~/ && \
    cp ~/.vim/toomore.vim/tmux.conf.mac ~/.tmux.conf

COPY /install_deb/ /root/install_deb/
COPY /pull_repo/ /root/pull_repo/
