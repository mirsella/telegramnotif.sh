# telegram-notification.sh

long running task ? search no more, with a simple command you can send a push notification to your phone from telegram.
telegram bots are incredibly easy to set up, installing this script should take aproximately 5min, but save your coutless time.

## Utility ?

if you want to know when a task finish, for example : 
compiling ? `make; notif "finished compiling"`
downloading ? `wget https://foo.com/bar.tar.gz; notif "finished download bar.tar.gz"`
and you get the point.

you can also send links or text to your phone easily from your computer, if KDE connect isn't your tings

## Configuration

should be fast and easy.

### Bot setup

> i took the bot setup part from https://github.com/simonacca/TellTg

First a bot and a chat_id are needed:
* create a bot via the [BotFather](https://telegram.me/botfather)
* take note of the bot's `token` provided by the botfather
* add the bot to your contacts and sent it a message
* Use the `getUpdates` API method to retrive your `chat_id`
  * To do that, navigate to `https://api.telegram.org/bot{token}/getUpdates` and look for an `id` element inside a `chat` element


### Script configuration
the script need to know the bot token and the chat id, it use environment variables : `tg_token` and `tg_id`
so you can :
- just declare the variables in your shellrc
- declare the variables in a special file, `/etc/telegram-notif.conf` or with a higher priority `~/.config/telegram-notif.conf`. 
  you declare the variable in it :
  tg_token='1234:abc-zjh'
  tg_id='56729'



### Installation of the script

to install this script simply put it in your path and rename it if you want,
if you don't know you can just execute this : 
`curl https://raw.githubusercontent.com/mirsella/telegram-notif.sh/main/telegram-notif.sh > /usr/bin/telegram-notif.sh && sudo chmod +x /usr/bin/telegram-notif.sh`
