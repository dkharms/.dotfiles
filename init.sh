INIT_PATH=$(pwd)

# 🔥 zsh configuration
sudo ln -sf ${INIT_PATH}/.zshrc ${HOME}/.zshrc

# 🔥 alacritty configuration
mkdir -p ${HOME}/.config/alacritty
sudo ln -sf ${INIT_PATH}/config/alacritty/alacritty.yml \
  ${HOME}/.config/alacritty/alacritty.yml

# 🔥 zellij configuration
mkdir -p ${HOME}/.config/zellij
sudo ln -sf ${INIT_PATH}/config/zellij/config.kdl \
  ${HOME}/.config/zellij/config.kdl

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
