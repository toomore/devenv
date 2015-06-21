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
  * vimrc from [toomore/toomore.vim](https://github.com/toomore/toomore.vim).

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

Build docker image

    sh ./make.sh

or pull image from docker hub.

    docker pull toomore/devenv

Run in container.

    docker run -it toomore/devenv

Or run short term.

    docker run -it --rm toomore/devenv
