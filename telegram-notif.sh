#!/bin/env sh
[ -f /etc/telegram-notif.conf ] && source /etc/telegram-notif.conf 
[ -f ~/.config/telegram-notif.conf ] && source ~/.config/telegram-notif.conf 
curl -X POST -H 'Content-Type: application/json' -d '{"chat_id": '$tg_id', "text": "'"${@:-$(history | tail -n 1)}"'"}' "https://api.telegram.org/bot$tg_token/sendMessage"
