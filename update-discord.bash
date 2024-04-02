#!/usr/bin/bash
sudo echo "Updating discord..."
killall -9 Discord
set -o errexit
mkdir -p ~/.local/bin
mkdir -p ~/.temp/discord
curl "https://discordapp.com/api/download/stable?platform=linux&format=tar.gz" -Lo ~/.temp/discord/discord.tar.gz
tar -xvf ~/.temp/discord/discord.tar.gz -C ~/.local/bin
sudo rm /usr/share/icons/discord.png
sudo rm /usr/bin/discord
sudo ln -s ~/.local/bin/Discord/discord.png /usr/share/icons/discord.png
sudo ln -s ~/.local/bin/Discord/Discord /usr/bin/discord
rm -rf ~/.temp/discord
echo "\n\n\n"
echo "Discord updated!"
