default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare_arch_build'
	@echo
	@echo '	$$ make build'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make remove'
	@echo
	@echo '	$$ make config_install'
	@echo	

.PHONY: help


install: chadwm_install xsession_install config_install
.PHONY: install

remove: chadwm_remove xsession_remove config_remove
.PHONY: remove




##
## * https://aur.archlinux.org/packages/dwm/
## * https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=dwm
##

prepare_arch_build:
	sudo pacman -Sy --needed libx11 libxinerama libxft freetype2 st dmenu
.PHONY: prepare_arch_build


build:
	make -C chadwm
.PHONY: build

chadwm_install: build
#	sudo install -Dm755 ./chadwm/dwm /usr/bin/chadwm
	sudo install -Dm755 ./chadwm/dwm /usr/local/bin/chadwm
.PHONY: chadwm_install


chadwm_remove:
#	sudo rm -f /usr/bin/chadwm
	sudo rm -f /usr/local/bin/chadwm
.PHONY: chadwm_remove




xsession_install:
	make -C xsession install
.PHONY: xsession_install

xsession_remove:
	make -C xsession remove
.PHONY: xsession_remove




config_install:
	make -C config install
.PHONY: config_install

config_remove:
	make -C config remove
.PHONY: config_remove
