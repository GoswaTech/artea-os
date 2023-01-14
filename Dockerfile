FROM debian:11


#######
# 3rtea OS
#######
#
# Bienvenue dans mon OS. Commencez par faire une
# petite mise à jour.
#
#######

# Dépendances Lutris, on initialise mntnt pour éviter
# les erreurs de compilation.
RUN echo "deb https://download.opensuse.org/repositories/home:/strycore/Debian_11/ ./" | tee /etc/apt/sources.list.d/lutris.list
RUN wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_11/Release.key -O- | tee /etc/apt/trusted.gpg.d/lutris.asc

RUN apt update
RUN apt upgrade

#RUN 

###

#######
# INSTALL GNOME
#######
#
# Sert à avoir une interface graphique.
#
#######

RUN apt install lxde -y

###

#######
# INSTALL SSH / VIM / ...
#######
#
# Configure la base du système.
#
#######

RUN apt install ssh vim -y

#######
# INSTALL LUTRIS
#######
#
# Lutris sert à lancer les jeux de nombreuses
# plateformes différentes.
#
#######

#RUN apt install lutris

###

