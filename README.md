# .dotfiles

## Installing

You will need [git](https://git-scm.com/) and GNU [stow](https://www.gnu.org/software/stow/).

Clone into your `$HOME` directory or `~`

```bash
git clone https://github.com/rodgeraraujo/.dotfiles.git ~
```

Run `stow` to symlink everything or just select what you want

### Install everything

```bash
stow */ # Everything (the '/' ignores the README)
```

### Install ZSH

```bash
stow zsh # only my zsh config
```
