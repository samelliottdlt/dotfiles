# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## What is chezmoi?

chezmoi manages your dotfiles across multiple machines. It uses a source-state directory (this repo) and applies it to your home directory, handling templates, secrets, and machine-specific configs.

## Install

### One-line install (Linux/macOS)

```sh
sh -c "$(curl -fsLS get.chezmoi.io)"
```

### Package managers

```sh
# macOS
brew install chezmoi

# Arch Linux
pacman -S chezmoi

# Debian/Ubuntu
sudo apt install chezmoi

# Fedora
sudo dnf install chezmoi

# Windows
choco install chezmoi
# or
winget install twpayne.chezmoi
```

## Setup on a new machine

Initialise and apply dotfiles in one command:

```sh
chezmoi init --apply samelliottdlt
```

Or step by step:

```sh
chezmoi init samelliottdlt
chezmoi diff   # review changes
chezmoi apply  # apply to home directory
```

## Day-to-day usage

```sh
chezmoi add ~/.config/some/file   # start managing a file
chezmoi edit ~/.config/some/file  # edit the source version
chezmoi diff                      # preview pending changes
chezmoi apply                     # apply changes to home directory
chezmoi cd                        # cd into the source directory
chezmoi update                    # pull latest from remote & apply
```
