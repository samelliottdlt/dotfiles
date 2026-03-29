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

## New machine setup

### 1. Install chezmoi and apply dotfiles

```sh
chezmoi init --apply samelliottdlt
```

### 2. Install fnm (fast Node manager)

```sh
# macOS
brew install fnm

# Arch Linux
pacman -S fnm

# Linux (other)
curl -fsSL https://fnm.vercel.app/install | bash

# Windows
winget install Schniz.fnm
```

Then install Node:

```sh
fnm install --lts
```

### 3. Install [scripts](https://github.com/samelliottdlt/scripts)

```sh
curl -fsSL https://raw.githubusercontent.com/samelliottdlt/scripts/main/install.sh | bash
```

### 4. Install remaining dev tools

```sh
s setup --install
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
