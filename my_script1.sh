#!/data/data/com.termux/files/usr/bin/bash 

echo \"Zacatek / Start\" 

fish_add_path bin/ 

fisher install IlanCosman/tide@v6 

n

tide configure --auto --style=Lean --prompt_colors='True color' --show_time='24-hour format' --lean_prompt_height='Two lines' --prompt_connection=Dotted --prompt_connection_andor_frame_color=Lightest --prompt_spacing=Sparse --icons='Many icons' --transient=Yes

termux-reload-settings


echo \"done\" 

echo exit ;


