read -p "Which Eaglercraft Version Server Do you Want" Version
if [ $Version = "1.8.8" ]; then
  echo -n "Downloading 1.8.8 server scripts "
    #git clone https://github.com/bbb58546/EaglercraftX-Server.git
    touch startserver.sh
    echo 'cd server && sudo java -jar server.jar' > startserver.sh
    echo 'cd ..' >> startserver.sh
    echo 'cd bungee && sudo java -jar bungee.jar' >> startserver.sh
    echo "Want Plugins? (y/n)"
    read Plugins
    if [ $Plugins = "y" ]; then
      echo "Go To This Link For Plugins https://modrinth.com/plugins?g=categories:bukkit&v=1.8.8"
    fi
    bash startserver.sh
fi
if [ $Version = "1.12.2" ]; then
  echo "Downloading 1.12.2 server scripts"
  #git clone https://github.com/dragon731012/Eaglercraft-1.12-Server-Hosting.git
  echo "Want Plugins? (y/n)"
    read Plugins
    if [ $Plugins = "y" ]; then
      echo "Go To This Link For Plugins https://modrinth.com/plugins?g=categories:bukkit&v=1.12.2"
    fi
fi
  bash startup.sh