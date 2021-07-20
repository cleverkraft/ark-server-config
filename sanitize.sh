#!/bin/bash

# Script to sanitize Ark config files stored in private-src directory

# Need to replace anything with "Password" in it, like
# ServerAdminPassword=*
# ServerPassword=*

echo "Redacting passwords for TheIsland..."
sed "s/Password=.*/Password=_REDACTED_/g" private-src/TheIsland/GameUserSettings.ini > TheIsland/GameUserSettings.ini
sed "s/Password=.*/Password=_REDACTED_/g" private-src/TheIsland/Game.ini > TheIsland/Game.ini 
echo "Redacting passwords for Ragnarok..."
sed "s/Password=.*/Password=_REDACTED_/g" private-src/TheIsland/GameUserSettings.ini > Ragnarok/GameUserSettings.ini
sed "s/Password=.*/Password=_REDACTED_/g" private-src/TheIsland/Game.ini > Ragnarok/Game.ini 
echo "Sanitized config files created."