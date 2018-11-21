# i3-polybar-monitor
Manage i3; Polybar  Monitor resolution &amp; extension


# Prerequisites
[polybar](https://github.com/jaagr/polybar)
[mons](https://github.com/Ventto/mons)


# Edit your shellrc

If you want to call your configuration by a terminal command,
lets say I want to switch to my "laptop big" resolution config
I want to say `res lappi-big` or since I'm lazy, `res lb`

For now - I call my makefile over my bash/zshrc as an alias
```
alias res='f() { cd ~/<Your repo clone path>/; make $1 };f'
``````
