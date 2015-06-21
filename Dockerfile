FROM ubuntu:14.04

ADD go1.4.2.linux-amd64.tar.gz .

ENV GOROOT /go
ENV GOPATH /gopath
ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH

RUN mkdir /gopath && apt-get update && \
    apt-get install -y git vim curl gcc ctags tmux && \
    rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN git clone https://github.com/toomore/toomore.vim.git ~/.vim/toomore.vim/ && \
    sh ~/.vim/toomore.vim/make_ubuntu.sh && \
    cp ~/.vim/toomore.vim/bashrc.ubuntu ~/.bashrc && \
    cp ~/.vim/toomore.vim/tmux.conf.mac ~/.tmux.conf

COPY /install_deb/ /root/install_deb/
COPY /pull_repo/ /root/pull_repo/
