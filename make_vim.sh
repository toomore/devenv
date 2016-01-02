#!/bin/bash
VIMVER="7.4.1022"

curl -L https://github.com/vim/vim/archive/v${VIMVER}.tar.gz > vim.tar.gz
tar -xvf ./vim.tar.gz
cd ./vim-${VIMVER}/

./configure --with-features=huge --enable-luainterp                    \
            --enable-gui=no --without-x --prefix=/usr               && \
make VIMRUNTIMEDIR=/usr/share/vim/vim74                             && \
make install
