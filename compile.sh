cd framework
javac -d out -cp /home/diary/Documents/L2/apache-tomcat-10.1.28/lib/servlet-api.jar src/com/myframework/*.java
 
jar cf framwork.jar -C out .
cp framwork.jar ../test/WEB-INF/lib/

cd ../test
javac -d WEB-INF/classes -cp "/home/diary/Documents/L2/apache-tomcat-10.1.28/lib/servlet-api.jar:WEB-INF/lib/*" src/com/example/Test.java

jar cvf MyServletApp.war *
cp MyServletApp.war /home/diary/Documents/L2/apache-tomcat-10.1.28/webapps

sudo /home/diary/Documents/L2/apache-tomcat-10.1.28/bin/startup.sh
