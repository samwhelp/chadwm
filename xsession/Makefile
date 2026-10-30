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
	@echo '	$$ make install'
	@echo
	@echo '	$$ make remove'
	@echo

.PHONY: help


install: xsession-install config-install
.PHONY: install

xsession-install:
	sudo install -Dm644 ./chadwm-session.desktop /usr/share/xsessions/chadwm-session.desktop
	sudo install -Dm755 ./xsessions/chadwm-session /usr/share/chadwm/xsessions/chadwm-session
.PHONY: xsession-install

config-install:
	sudo install -Dm644 ./config/chadwm/environment /usr/share/chadwm/config/chadwm/environment
	sudo install -Dm755 ./config/chadwm/autostart /usr/share/chadwm/config/chadwm/autostart
.PHONY: config-install




remove: xsession-remove config-remove
.PHONY: remove

xsession-remove:
	sudo rm -f /usr/share/xsessions/chadwm-session.desktop
	sudo rm -f /usr/share/chadwm/xsessions/chadwm-session
.PHONY: xsession-remove

config-remove:
	sudo rm -f /usr/share/chadwm/config/chadwm/environment
	sudo rm -f /usr/share/chadwm/config/chadwm/autostart
.PHONY: config-remove
