# Guglina TTS

Guglina TTS é um sintetizador de voz, em **português do Brasil**, que lê telas para portadores de deficiência visual. Transforma texto em áudio, permitindo que pessoas cegas ou com baixa visão tenham acesso ao conteúdo exibido na tela. Embora o principal público-alvo de sistemas de conversão texto-fala – como o Guglina TTS – seja formado por pessoas com deficiência visual, esse tipo de programa pode ser usado por pessoas com dislexia e outras dificuldades de leitura, pessoas com deficiência severa de fala, bem como por crianças pré-alfabetizadas. Além de ser uma ferramenta de tecnologia assistiva, sintetizadores de voz podem ter ainda aplicações pedagógicas e de entretenimento.
Está sob a égide da **licença**:
### GPLv3
> Mantenedor: Felipe Facundes
###### Site: https://brasiltts.wordpress.com/
###### E-Mail: felipe.facundes@gmail.com
###### Telegram: https://t.me/comandos_linux
#
### Instalação:

    git clone https://github.com/felipefacundes/guglinatts
    cd guglinatts
    
- **Você poderá executar:**
```
chmod +x INSTALL.sh
yes s | sh INSTALL.sh
```
##### Ou, manualmente:
``` 
sudo cp guglinatts-generic.conf /etc/speech-dispatcher/modules/
sudo cp speechd.conf /etc/speech-dispatcher/
sudo cp googletts* /bin/
sudo chmod +x /bin/googletts*
```     
#
### Instalação de Dependências:

- **As Dependências São:**
  - espeak-ng
  - speech-dispatcher
  - orca
  - onboard
  - xsel 
  - libnotify 
  - python2-notify 
  - perl-libwww 
  - perl-www-mechanize 
  - perl-html-tree
  - ffmpeg
  - sox 
  - fmt 
  - lame 
  - perl-www-curl

#
- **Instalação pelo ArchLinux**
```
sudo pacman -S espeak-ng speech-dispatcher orca onboard ffmpeg xsel libnotify python2-notify perl-libwww perl-www-mechanize perl-html-tree sox fmt lame perl-www-curl
```
```
sudo pacman -U svox-pico-bin-1.0+git20130326-8-x86_64.pkg.tar.xz
```
#
- **Pelo Debian e derivados:**
  - Caso não tenha o pico2wave no repositório.
  - Deverá primeiro, converter os pacotes ".tar.xz" em ".deb"
  - Use o comando alien para converter
  - Após, é só instalar com o comando dpkg
  - **Renomeie** os arquivos ".pkg.tar.xz"
  - Para ".pkg.tar.gz"

```
fakeroot alien -d "nome".pkg.tar.gz
sudo dpkg -i *.deb
```

#### Fedora e derivados: o alien também gera pacotes ".rpm"
    fakeroot alien -r "nome".pkg.tar.gz

#
### Finalizando Instalação

- Feche tudo e mate a sessão
```
pkill -9 -u $USER
```
- Inicie o X e digite no terminal
```
orca -s
```
- Na **guia: "Voz"**.
- Configure, desse modo:
  - Sistema de fala: **Speech Dispatcher**
  - Sintetizador de fala: **guglinatts**
  - Personagem: **Voz padrão para guglinatts (pt)**

#
### Caso o onboard não esteja iniciando, junto com o sistema. Inclua no ~/.xinitrc
``` 
onboard --not-show-in=GNOME,GNOME-Classic:GNOME --startup-delay=3.0 &
```     
- Ou
``` 
cp /etc/xdg/autostart/onboard-autostart.desktop ~/.config/autostart/
```
### Ativar o onboard é necessário, para que programas que tenham o recurso de acessibilidade, ###
### como o OKULAR, possam funcionar corretamente. Não deixe de ativar o onboard! ;) ###
###### Guglina é um acrônimo de: Google + Regina. Uma homenagem à Paulista: Regina Bittar, responsável pela voz do Google no Brasil.
#### Licence: GPLv3 ####
