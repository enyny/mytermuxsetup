#!/data/data/com.termux/files/usr/bin/bash 

echo \"Zacatek / Start\" 

termux-setup-storage && termux-wake-lock && mkdir -p $HOME/.termux && pkg update -y && pkg upgrade -y && pkg i -y fish android-tools curl wget fastfetch htop speedtest-go aria2 git lsd python rust micro php rclone termux-api ffmpeg fzf ripgrep msedit atomicparsley openssh gh ani-cli termux-am python-cryptography vim && curl -o $HOME/.termux/font.ttf https://raw.githubusercontent.com/ryanoasis/nerd-fonts/refs/heads/master/patched-fonts/FiraCode/Retina/FiraCodeNerdFont-Retina.ttf && chsh -s fish 

echo \"done\" 

echo exit ;


