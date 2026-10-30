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


install: config-install bar-install
#	tree ~/.config/chadwm
.PHONY: install

config-install:
	install -Dm644 ./environment ~/.config/chadwm/environment
	install -Dm755 ./autostart ~/.config/chadwm/autostart
.PHONY: config-install

bar-install:
	install -Dm755 ./bar/chadwm-bar-info.sh ~/.config/chadwm/bar/chadwm-bar-info.sh
	install -Dm755 ./bar/chadwm-bar-clock.sh ~/.config/chadwm/bar/chadwm-bar-clock.sh
	install -Dm644 ./bar/themes/gruvchad ~/.config/chadwm/bar/themes/gruvchad
	install -Dm644 ./bar/themes/nord ~/.config/chadwm/bar/themes/nord
	install -Dm644 ./bar/themes/onedark ~/.config/chadwm/bar/themes/onedark
.PHONY: bar-install




remove: config-remove bar-remove
#	tree ~/.config/chadwm
.PHONY: remove

config-remove:
	rm -f ~/.config/chadwm/environment
	rm -f ~/.config/chadwm/autostart
.PHONY: config-remove

bar-remove:
	rm -f  ~/.config/chadwm/bar/chadwm-bar-info.sh
	rm -f  ~/.config/chadwm/bar/chadwm-bar-clock.sh
	rm -f  ~/.config/chadwm/bar/themes/gruvchad
	rm -f  ~/.config/chadwm/bar/themes/nord
	rm -f  ~/.config/chadwm/bar/themes/onedark
.PHONY: bar-remove
