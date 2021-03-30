#!/usr/bin/env bash
echo "CraftServ - Created by Olafcio"
echo ""
echo "-----"
if [[ ! -d "$HOME/.cserv" ]]
then
  if [[ -f "$HOME/.cserv" ]]
  then
    rm $HOME/.cserv
  fi
  mkdir $HOME/.cserv
  touch $HOME/.cserv/server.properties
  touch $HOME/.cserv/eula.txt
  mkdir $HOME/plugins
  mkdir $HOME/logs
  echo "eula=true">$HOME/.cserv/eula.txt
  echo -n "Your new server name: "
  read nss;
  echo "server-name=$nss">$HOME/.cserv/server.properties
  echo "server-ip=">>$HOME/.cserv/server.properties
  echo -n "Your new server description: "
  read nsmd;
  echo "motd=$nsmd">>$HOME/.cserv/server.properties
  echo -n "Your new server launch port (don't type if main port: click ENTER): "
  read nsp;
  case $nsp in
    "") nsp='25565' ;;
  esac
  echo "server-port=$nsp">>$HOME/.cserv/server.properties
  echo "spawn-protection=16">>$HOME/.cserv/server.properties
  echo "max-tick-time=60000">>$HOME/.cserv/server.properties
  echo "query.port=$nsp">>$HOME/.cserv/server.properties
  echo "generation-settings=">>$HOME/.cserv/server.properties
  echo "sync-chunk-writes=true">>$HOME/.cserv/server.properties
  echo "force-gamemode=false">>$HOME/.cserv/server.properties
  echo -n "Enable Nether? (Y/n): "
  read nsne;
  case $nsne in
    "") nsne=true ;;
    "y") nsne=true ;;
    "Y") nsne=true ;;
    "yes") nsne=true ;;
    "Yes") nsne=true ;;
    "n") nsne=false ;;
    "no") nsne=false ;;
    *) nsne=true
  esac
  echo "allow-nether=$nsne">>$HOME/.cserv/server.properties
  echo "enforce-whitelist=false">>$HOME/.cserv/server.properties
  echo -n "Default server gamemode (S - survival, a - adventure, c - creative, sp - spectator): "
  read nsdsg;
  case $nsdsg in
    "") nsdsg="survival" ;;
    "s") nsdsg="survival" ;;
    "S") nsdsg="survival" ;;
    "a") nsdsg="adventure" ;;
    "c") nsdsg="creative" ;;
    "sp") nsdsg="spectator" ;;
    *) nsdsg="survival"
  esac
  echo "gamemode=$nsdsg">>$HOME/.cserv/server.properties
  echo "broadcast-console-to-ops=true">>$HOME/.cserv/server.properties
  echo -n "Enable server searching on websites? (minecraftservers.org e.g.) [y/N]: "
  read nssow;
  case $nssow in
    "") nssow=false ;;
    "y") nssow=true ;;
    "N") nssow=false ;;
    "n") nssow=false ;;
    *) nssow=false
  esac
  echo "enable-query=$nssow">>$HOME/.cserv/server.properties
  echo "player-idle-timeout=0">>$HOME/.cserv/server.properties
  echo "difficulty=normal">>$HOME/.cserv/server.properties
  echo -n "Enable monsters on your server? [Y/n]: "
  read nsem;
  case $nsem in
    "") nsem=true ;;
    "Y") nsem=true ;;
    "y") nsem=true ;;
    "n") nsem=false ;;
    *) nsem=true
  esac
  echo "spawn-monsters=$nsem">>$HOME/.cserv/server.properties
  echo "broadcast-rcon-to-ops=true">>$HOME/.cserv/server.properties
  echo "op-permission-level=4">>$HOME/.cserv/server.properties
  echo -n "Enable PvP on your server? [Y/n]: "
  read nsep;
  case $nsep in
    "") nsep=true ;;
    "Y") nsep=true ;;
    "y") nsep=true ;;
    "n") nsep=false ;;
    *) nsep=true
  esac
  echo "pvp=true">>$HOME/.cserv/server.properties
  echo "entity-broadcast-range-percentage=100">>$HOME/.cserv/server.properties
  echo "snooper-enabled=true">>$HOME/.cserv/server.properties
  echo "level-type=default">>$HOME/.cserv/server.properties
  echo -n "Enable hardcore on your server? [Y/n]: "
  read nshe;
  case $nshe in
    "") nshe=false ;;
    "Y") nshe=true ;;
    "y") nshe=true ;;
    "n") nshe=false ;;
    *) nshe=false
  esac
  echo "hardcore=$nshe">>$HOME/.cserv/server.properties
  echo "enable-status=true">>$HOME/.cserv/server.properties
  echo -n "Enable command blocks on your server? [Y/n]: "
  read nsec;
  case $nsec in
    "") nsec=true ;;
    "Y") nsec=true ;;
    "y") nsec=true ;;
    "n") nsec=false ;;
    *) nsec=true
  esac
  echo "white-list=false">>$HOME/.cserv/server.properties
  echo "max-players=1000">>$HOME/.cserv/server.properties
  echo "debug=false">>$HOME/.cserv/server.properties
  echo "level-seed=">>$HOME/.cserv/server.properties
  echo "max-build-height=256">>$HOME/.cserv/server.properties
  echo "enable-rcon=false">>$HOME/.cserv/server.properties
  echo "rcon.port=25544">>$HOME/.cserv/server.properties
  echo "level-name=.">>$HOME/.cserv/server.properties
  echo "resource-pack=">>$HOME/.cserv/server.properties
  echo "view-distance=10">>$HOME/.cserv/server.properties
  echo "online-mode=false">>$HOME/.cserv/server.properties
  echo "enable-jmx-monitoring=false">>$HOME/.cserv/server.properties
  echo "prevent-proxy-connections=false">>$HOME/.cserv/server.properties
  echo "use-native-transport=true">>$HOME/.cserv/server.properties
  echo "spawn-animals=true">>$HOME/.cserv/server.properties
  echo "function-permission-level=4">>$HOME/.cserv/server.properties
  echo "resource-pack-sha1=">>$HOME/.cserv/server.properties
  echo "network-compression-threshold=">>$HOME/.cserv/server.properties
  echo "allow-flight=true">>$HOME/.cserv/server.properties
  echo "spawn-npcs=true">>$HOME/.cserv/server.properties
  echo "generate-structures=true">>$HOME/.cserv/server.properties
  echo -n "What is your operating system? [linux/macos]: "
  read wiyos;
  case $wiyos in
    "linux") wget https://serverjars.com/jars/proxies/waterfall/spigot-1.12.2.jar ;;
    "macos") echo "(wget required)"; wget https://serverjars.com/jars/servers/spigot/spigot-1.12.2.jar ;;
    *) echo "Operating system not supported or does not exists :("
  esac
  mv ~/Downloads/spigot-1.12.2.jar $HOME/.cserv/minecraft_server.jar
fi
echo "Starting server..."
oup123456="`pwd`"
cd $HOME/.cserv
java -jar minecraft_server.jar
cd $oup123456
echo "---"
