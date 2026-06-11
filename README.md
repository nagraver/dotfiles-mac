# Dotfiles

Personal macOS dotfiles for zsh, Starship, Ghostty, Zed, Vim, and Homebrew.

## What's Included

- `.zshrc` - zsh setup with oh-my-zsh, `git` and `brew` plugins, Homebrew on `PATH`, zsh syntax highlighting, and Starship.
- `starship.toml` - Starship prompt symbols and module styling.
- `Brewfile` - Homebrew packages and GUI apps used on a new Mac.
- `ghostty/` - Ghostty terminal config and themes.
- `zed/` - Zed settings, keymap, and custom themes.
- `.vimrc` - Vim config.

## Bootstrap a New Mac

1. Install Apple's Command Line Tools. They are required for Git and Homebrew.

```zsh
xcode-select --install
```

2. Install Homebrew.

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Clone this repository.

```zsh
git clone https://github.com/nagraver/dotfiles.git ~/dotfiles
```

4. Install packages from the Brewfile.

```zsh
brew bundle --file ~/dotfiles/Brewfile
```

5. Install oh-my-zsh if it is not already installed.

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

6. Link configs into the expected locations.

Back up or remove existing files first if these paths already exist.

```zsh
mkdir -p ~/.config ~/.config/zed

ln -sfn ~/dotfiles/.zshrc ~/.zshrc
ln -sfn ~/dotfiles/starship.toml ~/.config/starship.toml
ln -sfn ~/dotfiles/ghostty ~/.config/ghostty
ln -sfn ~/dotfiles/.vimrc ~/.vimrc

# Zed uses separate links for better sync behavior.
ln -sfn ~/dotfiles/zed/themes ~/.config/zed/themes
ln -sfn ~/dotfiles/zed/settings.json ~/.config/zed/settings.json
ln -sfn ~/dotfiles/zed/keymap.json ~/.config/zed/keymap.json
```

7. Reload zsh.

```zsh
source ~/.zshrc
```

If zsh completions behave strangely after changing plugins, rebuild the completion cache.

```zsh
rm -f ~/.zcompdump*
exec zsh
```

## Shell Notes

The current zsh setup expects Homebrew on Apple Silicon:

```zsh
export PATH="/opt/homebrew/bin:$PATH"
```

oh-my-zsh loads these built-in plugins:

```zsh
plugins=(git brew)
```

`zsh-syntax-highlighting` is installed by Homebrew and sourced directly after oh-my-zsh. Starship is initialized last.

## Updating the Brewfile

After installing or removing Homebrew packages, regenerate the Brewfile from this repository:

```zsh
brew bundle dump --file ~/dotfiles/Brewfile --describe --force
```

To install from the repository directory instead:

```zsh
cd ~/dotfiles
brew bundle
```
