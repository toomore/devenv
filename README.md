toomore/devenv
===============

Fast setup my development environment with Docker.

Default Install
----------------

* ctags
* curl
* gcc
* git
* tmux
* vim
  * w/ Vundle
  * conf. from [toomore/toomore.vim](https://github.com/toomore/toomore.vim).

Option Install
---------------

Some deb install scripts in `~/install_deb/`

* MariaDB 10.0
* Redis

Docker
-------

Get some source/binary code.

    sh ./make.sh

Run container.

    docker run -it toomore/devenv
