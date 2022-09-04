#!/bin/env bash
[ -f /etc/telegramnotif.conf ] && source /etc/telegramnotif.conf 
[ -f ~/.config/telegramnotif.conf ] && source ~/.config/telegramnotif.conf 
data='{"chat_id": '$TgId', "text": "'"${@:-$(read a; echo $a)}"'"}'
curl -s -X POST -H 'Content-Type: application/json' -d "$data" "https://api.telegram.org/bot$TgToken/sendMessage"
