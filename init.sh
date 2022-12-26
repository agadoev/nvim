

# install packer

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install language servers

dotnet tool install --global csharp-ls --version 0.5.7
export PATH=$HOME/.dotnet/tools:$PATH

npm install -g @volar/vue-language-server

npm install -g typescript typescript-language-server


# install nerd fonts
