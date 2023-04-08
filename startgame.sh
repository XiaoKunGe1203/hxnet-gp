clear
if [ -e "server.jar" ]
then
    JAR="server.jar"
    echo "Found "$JAR
else
    if [ -e "bedrock_server" ]
        then
            JAR="bedrock"
            chmod +x bedrock_server
            ./bedrock_server
        else
           echo  

    fi

fi

if [ "$JAR" = "" ]
then
clear
echo '______  _____  ______   __________________'
echo '___  / / /_  |/ /__  | / /__  ____/__  __/'
echo '__  /_/ /__    /__   |/ /__  __/  __  /   '
echo '_  __  / _    | _  /|  / _  /___  _  /    '
echo '/_/ /_/  /_/|_| /_/ |_/  /_____/  /_/     '
echo '_________                      ________                   ______'
echo '__  ____/_____ _______ ___________  __ \_____ _______________  /'
echo '_  / __ _  __ `/_  __ `__ \  _ \_  /_/ /  __ `/_  __ \  _ \_  / '
echo '/ /_/ / / /_/ /_  / / / / /  __/  ____// /_/ /_  / / /  __/  /  '
echo '\____/  \__,_/ /_/ /_/ /_/\___//_/     \__,_/ /_/ /_/\___//_/   '
echo '====================================='
echo '帮助页面https://helper.gp.nkvps.com/'
echo '====================================='
sleep 3s

                                                                         
    echo "1 安装 Minecraft Java服务器"
    echo "2 安装 Minecraft Bedrock服务器"

    echo "按Enter退出"
    read -p "选择: " SOFTWARE_SELECT </dev/tty
case $SOFTWARE_SELECT in
   "1")
     echo -e "==================================="
     echo -e "安装Minecraft Java服务器"
     echo -e "==================================="
     sleep 5s
     sh /installjava.sh
     exit
      ;;
   "2")
        echo "==============================="
        echo "安装Minecraft Bedrock服务器"
        echo "==============================="
         sleep 5s
        sh /installbed.sh
        exit
      ;;
esac

    JAR="server.jar"
fi
