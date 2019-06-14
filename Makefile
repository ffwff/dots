PWD ?= $(shell pwd)

default: install refresh

install:
	ln -sf $(PWD)/bin/* ~/.local/bin
	ln -sf $(PWD)/x11/compton.conf ~/.config/compton.conf
	ln -sf $(PWD)/x11/{.xprofile,.Xresources} ~
	mkdir -p ~/.config/micro && \
		ln -sf $(PWD)/micro/settings.json ~/.config/micro/settings.json
	ln -sf $(PWD)/bash/bashrc ~/.bashrc
	ln -sf $(PWD)/bash/bash_aliases ~/.bash_aliases
	ln -sf $(PWD)/bash/profile ~/.profile
	mkdir -p ~/.config/mpv && ln -sf $(PWD)/mpv/* ~/.config/mpv
	ln -sf $(PWD)/qshell/* ~/.config/
	ln -sf $(PWD)/kwin/* ~/.config/

refresh:
	xrdb -merge ~/.Xresources
