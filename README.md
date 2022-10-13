## New install fast setup guide

Become superuser

```
apt update 
apt upgrade
```
Install packages

```
add-apt-repository ppa:neovim-ppa/unstable
apt update

apt install vim i3 git neovim redshift flameshot rofi compton \
feh automake autoconf lxappearance xbacklight python-is-python3 \
python3-pip konsole blueman cmake curl clangd tlp xclip

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

curl -sL install-node.vercel.app/lts | bash 

pip3 install pynvim
```
Set i3

```
vim /etc/share/X11/xorg.conf.d/40-libinput.con

Option "NaturalScrolling" "True"
Option "Tapping" "True"
```
```
git clone https://github.com/haikarainen/light
cd light
./autogen.sh
./configure && make
make install
```

```
cp -r ./i3/config ~/.config
```

Change default terminal to konsole

```
sudo update-alternatives --config x-terminal-emulator
```

Setup nvim

```
cp -r ./nvim/init.vim ~/.config
```
```
:PlugInstall
:CocInstall coc-snippets
:CocInstall coc-clangd
:CocInstall coc-pyright
```

Copy fonds

```
mkdir ~/.fonts && cp *.ttf ~/.fonts
```

Copy compton config
```
cp compton.conf ~/.config
```
