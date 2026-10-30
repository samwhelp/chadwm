
# User Config


## Subject

* [User Config Dir Path](#user-config-dir-path)
* [User Config File List](#user-config-file-list)
* [Howto](#howto)


## User Config Dir Path

* [~/.config/chadwm](./)

## User Config File List

run

``` sh
tree --dirsfirst ~/.config/chadwm
```

show

```
/home/user/.config/chadwm
├── bar
│   ├── themes
│   │   ├── gruvchad
│   │   ├── nord
│   │   └── onedark
│   ├── chadwm-bar-clock.sh
│   └── chadwm-bar-info.sh
├── autostart
└── environment

2 directories, 7 files
```

## Howto

### Install

``` sh
make install
```

### Remove

``` sh
make remove
```
