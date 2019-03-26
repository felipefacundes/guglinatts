#!/bin/bash
sudo cp guglinatts-generic.conf /etc/speech-dispatcher/modules/
sudo cp speechd.conf /etc/speech-dispatcher/
sudo cp googletts* /bin/
sudo chmod +x /bin/googletts*
sudo pacman -S espeak-ng speech-dispatcher orca onboard ffmpeg \
xsel libnotify python2-notify perl-libwww perl-www-mechanize perl-html-tree sox fmt lame perl-www-curl
sudo pacman -U svox-pico-bin-1.0+git20130326-8-x86_64.pkg.tar.xz
#sudo pacman -U mbrola-3.0.1h-5-x86_64.pkg.tar.xz
#sudo pacman -U mbrola-voices-br4-1-2-any.pkg.tar.xz
#speak-ng -v mb/mb-br4 -s 124 -a 200 "instalação da Guglina TTS, concluída com sucesso."
googletts pt-BR "instalação da Guglina TTS, concluída com sucesso."
