FROM debian:11


#######
# 3rtea OS
#######
#
# Bienvenue dans mon OS. Commencez par faire une
# petite mise à jour.
#
#######

RUN apt update
RUN apt upgrade

#RUN 

###

#######
# INSTALL LXDE
#######
#
# Sert à avoir une interface graphique.
#
#######

RUN apt install lxde -y

###

#######
# INSTALL SSH / VIM / CURL / ...
#######
#
# Configure la base du système.
#
#######

RUN apt install ssh vim curl -y

#######
# INSTALL WINE
#######
#
# Installation des DLL Windows
#
#######

RUN apt install wine -y

#######
# INSTALL LUTRIS
#######
#
# Lutris sert à lancer les jeux de nombreuses
# plateformes différentes.
#
#######

# Installation des dépendances de lutris.
RUN apt install python3-lxml python3-yaml python3-requests python3-magic gir1.2-webkit2-4.0 gir1.2-notify-0.7 cabextract fluid-soundfont-gs mesa-utils -y

RUN echo "deb https://download.opensuse.org/repositories/home:/strycore/Debian_11/ ./" | tee /etc/apt/sources.list.d/lutris.list
RUN curl -fsSL https://download.opensuse.org/repositories/home:strycore/Debian_11/Release.key | gpg --dearmor | tee /etc/apt/trusted.gpg.d/home_strycore.gpg > /dev/null

RUN apt install lutris

# Active la commande
RUN ln /usr/games/lutris /usr/bin/

###

