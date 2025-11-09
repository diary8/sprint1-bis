cd framework
javac -d out -cp /home/diary/Documents/L2/apache-tomcat-10.1.28/lib/servlet-api.jar src/com/myframework/*.java
 
jar cf framwork.jar -C out .