# setup-deVStudio
Post install script for fixing Microsoft Repository and updating VSCode installation.

## Prerequisites
- Install UserLAnd from Google Play Store (https://play.google.com/store/apps/details?id=tech.ula.devstudio).

## Quick-Fix for VSCode repo (trust unsigned repo)
```bash
sed -i 's/arch=/trusted=yes arch=/' /etc/apt/sources.list.d/vscode.list && sudo apt update -y && sudo apt upgrade -y
```
Restart the deVStudio App (or exit VSCode and restart with ```code --no-sandbox```).

That's it ;)

For more details see [README.md](./README.md).
