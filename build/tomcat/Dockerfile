# Vulhub's tomcat/tomcat8 (in app/) runs vulhub/tomcat:8.0 with tomcat-users.xml and the manager's
# context.xml mounted from the environment folder. Isoloom has no bind mounts, so this image copies
# the same files to the same places. Nothing else differs.
FROM vulhub/tomcat:8.0
COPY app/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY app/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY app/context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
