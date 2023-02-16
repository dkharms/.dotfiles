INIT_PATH=$(pwd)

# 🍺 brew configuration
# brew bundle

# 🔥 zsh configuration
sudo ln -sf ${INIT_PATH}/.zshrc ${HOME}/.zshrc

# 🌟 starship configuration
sudo ln -sf ${INIT_PATH}/config/starship/starship.toml \
  ${HOME}/.config/starship.toml

# 🔥 alacritty configuration
mkdir -p ${HOME}/.config/alacritty
sudo ln -sf ${INIT_PATH}/config/alacritty/alacritty.yml \
  ${HOME}/.config/alacritty/alacritty.yml

# 🔥 helix configuration
mkdir -p ${HOME}/.config/helix
sudo ln -sf ${INIT_PATH}/config/helix/config.toml ${HOME}/.config/helix/config.toml
sudo ln -sf ${INIT_PATH}/config/helix/languages.toml ${HOME}/.config/helix/languages.toml

mkdir -p ${HOME}/.config/helix/themes && cd ${INIT_PATH}/config/helix/themes
for filename in ./*.toml; do
  sudo ln -sf $(pwd)/${filename} \
    ${HOME}/.config/helix/themes/${filename}
done
cd ${INIT_PATH}

# 🔥 git configuration
sudo ln -sf ${INIT_PATH}/.commitmessage ${HOME}/.commitmessage
sudo ln -sf ${INIT_PATH}/.gitconfig ${HOME}/.gitconfig