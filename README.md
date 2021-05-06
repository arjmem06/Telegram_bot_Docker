# Google Drive Uploader Telegram Bot
**A Telegram bot to upload files from Telegram or Direct links to Google Drive.**
- Find it on Telegram as [Google Drive Uploader](https://t.me/uploadgdrivebot)

## Features
- [X] Telegram files support.
- [X] Direct Links support.
- [X] Custom Upload Folder.
- [X] TeamDrive Support.
- [X] Clone/Copy Google Drive Files.
- [X] Delete Google Drive Files.
- [X] Empty Google Drive trash.
- [X] youtube-dl support.

## ToDo 
- [ ] Handle more exceptions.
- [ ] LOGGER support.
- [ ] Service account support.
- [ ] Update command.





### Configuration Values
- `BOT_TOKEN` - Get it by contacting to [BotFather](https://t.me/botfather)
- `APP_ID` - Get it by creating app on [my.telegram.org](https://my.telegram.org/apps)
- `API_HASH` - Get it by creating app on [my.telegram.org](https://my.telegram.org/apps)
- `SUDO_USERS` - List of Telegram User ID of sudo users, seperated by space.
- `SUPPORT_CHAT_LINK` - Telegram invite link of support chat.
- `DATABASE_URL` - Postgres database url.
- `DOWNLOAD_DIRECTORY` - Custom path for downloads. Must end with a forward `/` slash. (Default to `./downloads/`)


A Compose file looks like this:

```yaml
services:
  Telegram_bot:      
    image: arjmem2/telegram_bot
    environment:
      bot_token: 
      app_id : 
      api_hash : 
      sudo_users :  # Sepearted by space.
      suport_chat_link : 
      dowload_directory : "./downloads/"
      g_drive_client_id : 
      g_drive_client_secret :
      POSTGRES_DB : 
      POSTGRES_USER : 
      POSTGRES_PASSWORD : 
      POSTGRES_URL : # IP:PUERTO "5432"            
      
  db:
    image: postgres
    restart: always
    environment:
      POSTGRES_PASSWORD: 
      POSTGRES_USER : 
      POSTGRES_DB : 
      POSTGRES_URL : 
    ports:
      - 5432:5432      
      
    restart: unless-stopped     
```



## Credits
- [Dan](https://github.com/delivrance) for creating [PyroGram](https://pyrogram.org)
- [Spechide](https://github.com/Spechide) for [gDriveDB.py](./bot/helpers/sql_helper/gDriveDB.py)
- [Shivam Jha](https://github.com/lzzy12) for [Clone Feature](./bot/helpers/gdrive_utils/gDrive.py) from [python-aria-mirror-bot](https://github.com/lzzy12/python-aria-mirror-bot)

## Copyright & License
- Copyright (©) 2020 by [Adnan Ahmad](https://github.com/viperadnan-git)
- Licensed under the terms of the [GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007](./LICENSE)
