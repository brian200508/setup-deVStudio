# setup-deVStudio
Post install script for fixing Microsoft Repository and updating VSCode installation.

## Prerequisites
- Install UserLAnd from Google Play Store (https://play.google.com/store/apps/details?id=tech.ula.devstudio).

## Option 1: Quick-Fix for VSCode repo (recommended)
In order to get always the latest Visual Studio Code release with ```apt update``` and ```apt upgrade```, we have to trsust the unsigend Microsoft repository. Run this command once:
```bash
sed -i 's/arch=/trusted=yes arch=/' /etc/apt/sources.list.d/vscode.list && sudo apt update -y && sudo apt upgrade -y
```

## Option 2: Post-install script
Same as Option 1 with additional stuff like Git installation.

### Do post-install
Download and execute the post-installation script; for example in the Temrinal window opened by default:

```bash
apt update -y --allow-insecure-repositories && sudo apt install -y git && git clone https://github.com/brian200508/setup-deVStudio.git
```

```bash
chmod +x ./setup-deVStudio/setup-deVStudio.sh && ./setup-deVStudio/setup-deVStudio.sh
```

### Optionally delete Your local clone of this Repo
```bash
rm -rf ./setup-deVStudio
```

That's it ;)
