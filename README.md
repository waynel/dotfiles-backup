# richsoni/dotfiles

## Introduction

The basic structure of my dotfiles are based on John Clems files [jclem/dotfiles](https://github.com/holman/dotfiles) which are based off of Zach Holman's [holman/dotfiles](https://github.com/holman/dotfiles) repository. Essentially, configuration files are grouped by topic (i.e. "git", "vim", "zsh", etc.). `*.zsh` files are sourced automatically, and a file named `something.symlink` will by symlinked to `~/.something`.

## Installation

1. Clone the repository `git clone git@github.com:jclem/dotfiles.git`
2. `cd` into the repo `cd dotfiles`
3. Run the installer `./install`
4. Switch to system ruby (I use RVM, so: `rvm use system`)
5. Get submodules `git submodule update --init`
6. Build Command-T:

```bash
$ cd vim/vim.symlink/bundle/command-t/ruby/command-t
$ ruby extconf.rb
$ make
$ sudo make install
```

And, you're done. Note that Command-T will work only if your vim/MacVim builds have Ruby support.
