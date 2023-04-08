echo '====================='
echo '选择Java版本'
echo '====================='
echo "1 为 Java8"
echo "2 为 Java11"
echo "3 Java16"
echo "4 Java17"
echo "5 自定义版本（未开发）"
echo "请选择"
read -p "输入: " JAVA_SOFTWARE </dev/tty

case $JAVA_SOFTWARE in
1)
/jdk8/bin/java -Xms128M -Dfile.encoding=UTF-8 -Dlog4j2.formatMsgNoLookups=true -XX:+UseG1GC -jar server.jar nogui
;;
2)
/jdk11/bin/java -Xms128M -Dfile.encoding=UTF-8 -Dlog4j2.formatMsgNoLookups=true -XX:+UseG1GC -jar server.jar nogui
;;
3)
/jdk16/bin/java -Xms128M -Dfile.encoding=UTF-8 -Dlog4j2.formatMsgNoLookups=true -XX:+UseG1GC -jar server.jar nogui
;;
4)
/jdk17/bin/java -Xms128M -Dfile.encoding=UTF-8 -Dlog4j2.formatMsgNoLookups=true -XX:+UseG1GC -jar server.jar nogui
;;
5)
  echo '你来的太早了'
;;
esac
