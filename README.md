# `emacs-config`


## Installation and Setup

1. Unpack and save this repository in `~/.config/emacs`.

2. Move, rename or delete any of `~/.emacs`, `~/.emacs.el`, and `~/.emacs.d/init.el` present in the user home directory so that emacs loads `~/.config/emacs/init.el` as its config file. `init.el` in turn will invoke `babel` to generate and load `emacs.el` from `emacs.org`.

3. Edit `emacs.org` as desired. Do not edit `emacs.el` directly; this file is generated by `babel` and your edits likely will be overwritten.
