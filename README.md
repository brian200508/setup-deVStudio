# setup-deVStudio
Post install script for fixing Microsoft Repository and updating VSCode installation.

## Prerequisites
- Install UserLAnd from Google Play Store (https://play.google.com/store/apps/details?id=tech.ula.devstudio).

## Do post-install
Download and execute the post-installation script; for example in the Temrinal window opened by default:

```bash
sudo apt install -y git && git clone https://github.com/brian200508/setup-deVStudio.git
```

```bash
chmod +x ./setup-deVStudio/setup-deVStudio.sh && ./setup-deVStudio/setup-deVStudio.sh
```

## Optionally delete Your local clone of this Repo
```bash
rm -rf ./setup-deVStudio
```

That's it ;)
