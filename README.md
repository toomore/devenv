toomore/devenv
===============

Fast setup my development environment with Docker.

Default Install
----------------

* ctags
* curl
* gcc
* git
* go (by docker ADD `go1.4.2.linux-amd64.tar.gz`)
* tmux
* vim
  * w/ Vundle
  * conf. from [toomore/toomore.vim](https://github.com/toomore/toomore.vim).

Option Install
---------------

Some scripts for install deb in `~/install_deb/`

* MariaDB 10.0
* Redis

Pull Repo
----------

Fast pull repo scripts in `~/pull_repo/`

* [toomore/gogrs](https://github.com/toomore/gogrs)
* [toomore/Pensieve-go](https://github.com/toomore/Pensieve-go)

Docker
-------

Get some source/binary code.

    sh ./make.sh

Direct pull image

    docker pull toomore/devenv

Run container.

    docker run -it toomore/devenv
