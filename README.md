# telegram-notification.sh

**long running task** ? search no more, send a push notification to your phone from a simple command.<br>

telegram bots are incredibly easy to set up, installing this script should take aproximately 5min, and will come handy.

## Utility ?

if you want to know when a task finish, for example :<br>
compiling ? `make; notif "finished compiling"`<br>
downloading ? `wget https://foo.com/bar.tar.gz; notif "finished download bar.tar.gz"`<br>
and you get the point.

you can also send links or text to your phone easily from your computer, if KDE connect isn't your thing

## Configuration

should be fast and easy.

### Bot setup

> i took this bot setup part from https://github.com/simonacca/TellTg

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
- declare the variables in a special file, `/etc/telegram-notif.conf` or with a higher priority `~/.config/telegram-notif.conf`.<br>
  you declare the variable in it :
  ```
  tg_token='1234:abc-zjh'
  tg_id='56729'
  ```
if not arguments is provided the script will use the last entry in the history as text.


### Installation of the script

to install this script simply put it in your path and rename it if you want,<br>
if you don't know you can just execute this :<br>
`curl https://raw.githubusercontent.com/mirsella/telegram-notif.sh/main/telegram-notif.sh > /usr/bin/telegram-notif.sh && sudo chmod +x /usr/bin/telegram-notif.sh`
