# 🍺 brew configuration
brew bundle

# 🔥 zsh configuration
sudo ln -sf .zshrc ~/.zshrc

# 🌟 starship configuration
sudo ln -sf config/starship/starship.toml ~/.config/starship.toml

# 🔥 alacritty configuration
sudo ln -sf config/alacritty/alacritty.yaml ~/alacritty.yaml

# 🔥 helix configuration
mkdir -p ~/.config/helix
sudo ln -sf config/helix/config.toml ~/.config/helix/config.toml
sudo ln -sf config/helix/languages.toml ~/.config/helix/languages.toml

mkdir -p ~/.config/helix/themes && cd config/helix/themes
for filename in ./*.toml; do
  sudo ln -sf ${filename} \
    ~/.config/helix/themes/${filename}
done
cd ~/.dotfiles

# 🔥 git configuration
sudo ln -sf .commitmessage ~/.commitmessage
sudo ln -sf .gitconfig ~/.gitconfig