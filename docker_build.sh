#!/bin/sh

# if WeChatSetup-3.9.10.27.exe does not exist
if [ ! -f ./root/WeChatSetup-3.9.10.27.exe ]; then
  # then download it
  wget -O ./root/WeChatSetup-3.9.10.27.exe https://file.yangres.com/WeChatSetup-3.9.10.27.exe
fi

sudo docker build -t henryxiaoyang/wechat-box-3.9.10.27:latest -t henryxiaoyang/wechat-box-3.9.10.27:3.9.10.27 .