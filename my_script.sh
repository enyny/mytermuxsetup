#!/data/data/com.termux/files/usr/bin/bash 

echo \"Zacatek / Start\" 

termux-setup-storage

pkg update -y && pkg upgrade -y

pkg i -y fish android-tools curl wget fastfetch htop speedtest-go aria2 git lsd python rust micro php rclone termux-api ffmpeg fzf ripgrep msedit atomicparsley openssh gh ani-cli termux-am

fish
chsh -s fish
mkdir $HOME/bin
ln -s $HOME/mytermuxsetup/my-termux-url-opener $HOME/bin/termux-url-opener
ln -s $HOME/mytermuxsetup/my-termux-url-opener $HOME/bin/termux-file-editor

fish_add_path bin/
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher install IlanCosman/tide@v6
tide configure --auto --style=Lean --prompt_colors='True color' --show_time='24-hour format' --lean_prompt_height='Two lines' --prompt_connection=Dotted --prompt_connection_andor_frame_color=Darkest --prompt_spacing=Sparse --icons='Many icons' --transient=Yes

pip install -U "yt-dlp[default,curl-cffi]" 
pip install -U --pre yt-dlp gallery-dl pywidevine pyplayready pip-autoremove mutagen
pip cache purge

dos2unix $HOME/bin/*
chmod +x $HOME/bin/*

echo \"done\" 

echo exit ;


