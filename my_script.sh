#!/data/data/com.termux/files/usr/bin/bash 

echo \"Zacatek / Start\" 

termux-setup-storage

termux-wake-lock

mkdir -p $HOME/.termux

pkg update -y

pkg upgrade -y

pkg i -y fish android-tools curl wget fastfetch htop speedtest-go aria2 git lsd python rust micro php rclone termux-api ffmpeg fzf ripgrep msedit atomicparsley openssh gh ani-cli termux-am python-cryptography vim deno

curl -o $HOME/.termux/font.ttf https://raw.githubusercontent.com/ryanoasis/nerd-fonts/refs/heads/master/patched-fonts/FiraCode/Retina/FiraCodeNerdFont-Retina.ttf

mkdir -p $HOME/bin

ln -s $HOME/git/mytermuxsetup/my-termux-url-opener $HOME/bin/termux-url-opener

ln -s $HOME/git/mytermuxsetup/my-termux-url-opener $HOME/bin/termux-file-editor

dos2unix $HOME/bin/*

chmod +x $HOME/bin/*

export CARGO_BUILD_TARGET=aarch64-linux-android

export ANDROID_API_LEVEL=34

pip install -U --pre "yt-dlp[default,curl-cffi]" gallery-dl pywidevine pip-autoremove pyplayready

pip cache purge

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

chsh -s fish 

echo \"done\" 

echo exit ;