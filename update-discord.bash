#!/usr/bin/bash
sudo echo "Updating discord..."
killall -9 Discord
set -o errexit
mkdir -p ~/.local/bin
mkdir -p ~/.temp/discord
mkdir -p ~/.local/share/applications/
curl "https://discordapp.com/api/download/stable?platform=linux&format=tar.gz" -Lo ~/.temp/discord/discord.tar.gz
curl "https://raw.githubusercontent.com/grszik/discord-updater/main/discord.desktop" -Lo ~/.local/share/applications/discord.desktop
tar -xvf ~/.temp/discord/discord.tar.gz -C ~/.local/bin
sudo rm /usr/share/icons/discord.png
sudo rm /usr/bin/discord
sudo ln -s ~/.local/bin/Discord/discord.png /usr/share/icons/discord.png
sudo ln -s ~/.local/bin/Discord/Discord /usr/bin/discord
sudo ln -s ~/.local/share/applications/discord.desktop /usr/share/applications/discord.desktop
rm -rf ~/.temp/discord
echo "\n\n\n"
echo "Discord updated!"
