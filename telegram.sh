#!/bin/bash
cd /tmp || exit
echo "Downloading Telegram ..."
wget -q --show-progress https://updates.tdesktop.com/tlinux/tsetup.1.3.10.tar.xz -O telegram.tar.xz
tar -xf telegram.tar.xz
rm telegram.tar.xz

echo "Installing to opt..."
if [ -d "/opt/Telegram" ];then
    sudo rm -rf /opt/Telegram
fi
sudo mv Telegram /opt/Telegram

echo "Creating symbolic link..."
if [ -L "/usr/bin/telegram" ];then
    sudo rm -f /usr/bin/telegram
fi
sudo ln -s /opt/Telegram/Telegram /usr/bin/telegram

echo "Installation completed successfully."
echo "You can use Instagram!"
