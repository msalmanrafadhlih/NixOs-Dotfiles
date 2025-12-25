#!/usr/bin/env bash

kdocker -f -q chromium --user-data-dir=$HOME/.config/vivaldi/youtube --app="https://www.youtube.com" --class=youtube &
# kdocker -q -f vivaldi --enable-features=VaapiVideoDecoder --use-gl=desktop --ignore-gpu-blocklist www.youtube.com --class=youtube &

#surf "https://chat.openai.com"
