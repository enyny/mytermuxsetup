#!/data/data/com.termux/files/usr/bin/bash 

echo \"Zacatek / Start\" 

mkdir $HOME/bin

ln -s $HOME/git/mytermuxsetup/my-termux-url-opener $HOME/bin/termux-url-opener

ln -s $HOME/git/mytermuxsetup/my-termux-url-opener $HOME/bin/termux-file-editor

fish_add_path bin/ 

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

pip install -U --pre "yt-dlp[default,curl-cffi]" gallery-dl pywidevine pip-autoremove

pip cache purge

dos2unix $HOME/bin/*

chmod +x $HOME/bin/*

export CARGO_BUILD_TARGET=aarch64-linux-android

export ANDROID_API_LEVEL=34

pip install pyplayready

pip cache purge

fisher install IlanCosman/tide@v6 

n

tide configure --auto --style=Lean --prompt_colors='True color' --show_time='24-hour format' --lean_prompt_height='Two lines' --prompt_connection=Dotted --prompt_connection_andor_frame_color=Lightest --prompt_spacing=Sparse --icons='Many icons' --transient=Yes

termux-reload-settings


echo \"done\" 

echo exit ;


