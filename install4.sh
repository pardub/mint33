
#!/bin/zsh -xev


# +---------+
# | flatpak |
# +---------+

flatpak install flathub com.transmissionbt.Transmission -y 

flatpak install flathub io.github.TransmissionRemoteGtk -y 

flatpak install flathub org.audacityteam.Audacity -y 

flatpak install flathub org.filezillaproject.Filezilla -y 

flatpak install flathub ca.desrt.dconf-editor  -y

flatpak install flathub com.github.tchx84.Flatseal -y

flatpak install flathub org.mozilla.firefox -y


flatpak install flathub fr.romainvigier.MetadataCleaner -y


flatpak install flathub org.standardnotes.standardnotes -y


#flatpak install flathub com.mattjakeman.ExtensionManager -y


# flatpak install flathub org.telegram.desktop -y


# flatpak install flathub com.viber.Viber -y


flatpak install flathub org.kde.okular -y


flatpak install flathub com.github.jeromerobert.pdfarranger -y


flatpak install flathub com.github.babluboy.bookworm -y


flatpak install flathub net.ankiweb.Anki -y


flatpak install flathub io.mpv.Mpv -y


flatpak install flathub com.github.micahflee.torbrowser-launcher -y


flatpak install flathub org.gtkhash.gtkhash -y

# Gnome certificate manager and GUI for OpenPGP 
#flatpak install flathub org.gnome.seahorse.Application -y


flatpak install flathub org.keepassxc.KeePassXC -y


flatpak install flathub com.bitwarden.desktop -y


flatpak install flathub com.borgbase.Vorta -y

###


cd ~/.ssh 
chmod 600 config || exit
cd

# Virtualization made simple
# flatpak install flathub org.gnome.Boxes -y

# Intellij Idea Community
#flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y

# IRC Client
flatpak install flathub io.github.Hexchat -y

# An Open Source YouTube app for privacy
flatpak install flathub io.freetubeapp.FreeTube -y

# Libre Office
#flatpak install flathub org.libreoffice.LibreOffice -y

# Open Office
flatpak install flathub org.onlyoffice.desktopeditors -y

# nmap security scanner
flatpak install flathub org.nmap.Zenmap -y

# Edit screenshots
flatpak install flathub com.github.maoschanz.drawing -y

# A simple and modern eBook viewer
# flatpak install flathub com.github.johnfactotum.Foliate -y

# Chromium Web Browser
flatpak install flathub org.chromium.Chromium -y

# A simple and lightweight translator that allows you to translate and speak text using Google, Yandex Bing, LibreTranslate and Lingva. 
flatpak install flathub io.crow_translate.CrowTranslate -y


# +------+
# | Rust |
# +------+

curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

exec bash
source global_env/bin/activate

