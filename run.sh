#!/usr/bin/env bash
# Name: Run HooKord
# Author: tockdev

read -rp'Enter the webhook URL (leave empty to use last URL): ' webhook
if [[ $webhook != '' ]];then
echo $webhook > webhook.txt
fi

read -rp'Enter the username (leave empty to use last username or ~ to use default): ' username
if [[ $username != '' ]];then
if [[ $username = '~' ]];then
echo '' > username.txt
else
echo $username > username.txt
fi
fi

read -rp'Enter the avatar URL (leave empty to use last avatar or ~ to use default): ' avatar
if [[ $avatar != '' ]];then
if [[ $avatar = '~' ]];then
echo '' > avatar.txt
else
echo $avatar > avatar.txt
fi
fi

read -rp'Enter the message (leave empty to use last message): ' message
if [[ $message != '' ]];then
echo $message > message.txt
fi

npm run
