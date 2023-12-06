# setup-deVStudio
Post install script for fixing Microsoft Repository and updating VSCode installation.

## Prerequisites
- Install UserLAnd from Google Play Store (https://play.google.com/store/apps/details?id=tech.ula.devstudio).

## Quick-Fix for VSCode repo (trust unsigned repo)
```bash
sed -i 's/arch=/trusted=yes arch=/' /etc/apt/sources.list.d/vscode.list && sudo apt update -y && sudo apt upgrade -y
```

## Do post-install
Contains the Quick-Fix for VSCode repo and some more stuff (see [README.md](./README.md)).

That's it ;)
