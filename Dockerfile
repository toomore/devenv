FROM ubuntu:14.04

ADD go1.4.2.linux-amd64.tar.gz .
ENV PATH /go/bin:/gopath/bin:$PATH
ENV GOROOT /go
ENV GOPATH /gopath

RUN mkdir /gopath && apt-get update && apt-get install -y git vim curl gcc ctags
RUN git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN git clone https://github.com/toomore/toomore.vim.git ~/.vim/toomore.vim/
RUN sh ~/.vim/toomore.vim/make_ubuntu.sh
RUN cp ~/.vim/toomore.vim/bashrc.ubuntu ~/.bashrc

COPY ./install_mariadb.sh ~/
