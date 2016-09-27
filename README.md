[![Build Status](https://travis-ci.org/nibon7/dot_emacs.svg?branch=master)](https://travis-ci.org/nibon7/dot_emacs)

# My Emacs configuratioin

## Installation

Just clone this repo to '~/.emacs.d'.

```
git clone https://github.com/nibon7/dot_emacs.git ~/.emacs.d
```

## Requirements

You should build ycmd yourself and customize the variable 'ycmd-global-config' and 'ycmd-server-command'.
See [YCMD](https://github.com/Valloric/ycmd) and [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) for more help.

```
git clone https://github.com/Valloric/ycmd
cd ycmd
git submodule update --init --recursive
./build.py --all
```

```
(set-variable 'ycmd-global-config ("/your/path/to/ycm_extra_conf.py"))
(set-variable 'ycmd-server-command '("python2.7" "/your/path/to/ycmd"))
```

## Updates

Update the config with `git pull`. You may also want/need to update the third-party packages regularly too:

<kbd>M-x package-list-packages</kbd>, then <kbd>U</kbd> followed by <kbd>x</kbd>.

Then restart Emacs so that the changes can take effect.
