
# Boot

## Subject

* [Xsession](#xsession)
* [Autostart](#autostart)
* [Howto](#howto)


## Xsession

| Path | Note |
| --- | --- |
| [/usr/share/xsessions/chadwm-session.desktop](chadwm-session.desktop) | start here |
| [/usr/share/chadwm/xsessions/chadwm-session](xsessions/chadwm-session) | chadwm-session.desktop call this script |


## Autostart

> Not using system wild if user file exists.

### System Wild

| Path |
| --- |
| [/usr/share/chadwm/config/chadwm/environment](config/chadwm/environment) |
| [/usr/share/chadwm/config/chadwm/autostart](config/chadwm/autostart) |


### Per User

| Path |
| --- |
| [~/.config/chadwm/environment](../config/environment) |
| [~/.config/chadwm/autostart](../config/autostart) |


## Howto

### Install

``` sh
make install
```

### Remove

``` sh
make remove
```
