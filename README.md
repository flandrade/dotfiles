```
          ██            ██     ████ ██  ██
         ░██           ░██    ░██░ ░░  ░██
         ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
      ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░
     ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████
    ░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
██  ░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████
     ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░
```

# Dotfiles

My set of configuration files. These opinionated dotfiles are managed with
[Stow](https://www.gnu.org/software/stow/).

These dotfiles has configurations for zsh and prezto with custom
Powerlevel10k theme, vim, tmux, git with diff-so-fancy, etc.

This repo doesn't bootstrap Mac OS.

## Install Stow

```
brew install stow
stow <dir>
```

## Dotfiles Usage

By default, stow will create symlinks for files in the parent directory of
where you execute the command. This dotfiles setup assumes the repo is
located in the root of your home directory `~/dotfiles`. and all stow
commands should be executed in that directory.

**NOTE:** Stow can only create a symlink if a config file does not exist,
so you must delete it first before you can install a new one with Stow.

Fetch dotfiles from github:

```
git clone https://github.com/flandrade/dotfiles ~/dotfiles
```

You can manually install each package:

```
stow vim
```

or automatic install everything:

```sh
for d in $(ls -d */ | cut -f1 -d '/');
do
    ( stow "$d"  )
done
```

## VSCode Settings

Copy `vscode/settings.json`:

```
cp vscode/settings.json ~/Library/Application Support/Code/User/settings.json
```

Reopen VS Code to activate new settings.
