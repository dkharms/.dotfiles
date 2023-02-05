ROOT_PATH=$(pwd)

# 🍺 brew configuration
brew bundle

# 🔥 zsh configuration
sudo ln -sf ${ROOT_PATH}/.zshrc ${HOME}/.zshrc

# 🌟 starship configuration
sudo ln -sf ${ROOT_PATH}/config/starship/starship.toml \
  ${HOME}/.config/starship.toml

# 🔥 alacritty configuration
sudo ln -sf ${ROOT_PATH}/config/alacritty/alacritty.yml \
  ${HOME}/.config/alacritty/alacritty.yml

# 🔥 helix configuration
mkdir -p ${HOME}/.config/helix
sudo ln -sf ${ROOT_PATH}/config/helix/config.toml ${HOME}/.config/helix/config.toml
sudo ln -sf ${ROOT_PATH}/config/helix/languages.toml ${HOME}/.config/helix/languages.toml

mkdir -p ${HOME}/.config/helix/themes && cd ${ROOT_PATH}/config/helix/themes
for filename in ./*.toml; do
  sudo ln -sf ${filename} \
    ${HOME}/.config/helix/themes/${filename}
done
cd ${ROOT_PATH}

# 🔥 git configuration
sudo ln -sf ${ROOT_PATH}/.commitmessage ${HOME}/.commitmessage
sudo ln -sf ${ROOT_PATH}/.gitconfig ${HOME}/.gitconfig