

#/bin/bash
#源码安装最新版neovim
sudo apt install git || true
git clone https:github.com/neovim/neovim ||  true
#安装必须的依赖
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip \
  nodejs lua5.3  curl fd-file xsel xclip fcitx

