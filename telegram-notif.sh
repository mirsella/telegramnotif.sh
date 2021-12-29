#!/bin/env bash
[ -f /etc/telegram-notif.conf ] && source /etc/telegram-notif.conf 
[ -f ~/.config/telegram-notif.conf ] && source ~/.config/telegram-notif.conf 
data='{"chat_id": '$TgId', "text": "'"${@:-$(read a; echo $a)}"'"}'
curl -s -X POST -H 'Content-Type: application/json' -d "$data" "https://api.telegram.org/bot$TgToken/sendMessage"
