#!/bin/bash

# Script to sanitize Ark config files stored in private-src directory

# Need to replace anything with "Password" in it, like
# ServerAdminPassword=*
# ServerPassword=*

echo "Redacting passwords..."
sed "s/Password=.*/Password=_REDACTED_/g" private-src/GameUserSettings.ini > GameUserSettings.ini
sed "s/Password=.*/Password=_REDACTED_/g" private-src/Game.ini > Game.ini
echo "Sanitized config files created."