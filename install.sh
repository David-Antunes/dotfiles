#!/bin/sh
dnf update
dnf -y install timeshift gnome-tweaks openssl neovim git-delta vim google-chrome dnf-plugins-core wget flameshot speedtest-cli distrobox tldr nvtop htop iftop iotop ether-wake tmux gimp

# install docker
dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

dnf -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-compose

systemctl enable docker.service
systemctl start docker.service
systemctl enable containerd.service
systemctl start containerd.service

usermod -aG docker $USER

newgrp docker

# install vscode

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update
dnf -y install code

systemctl enable sshd.service
systemctl start sshd.service

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.spotify.Client
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.logseq.Logseq
flatpak install flathub org.signal.Signal

# install gitkraken

wget https://release.gitkraken.com/linux/gitkraken-amd64.rpm

dnf -y install ./gitkraken-amd64.rpm
rm gitkraken-amd64.rpm

# install mailspring

