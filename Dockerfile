FROM tomcat:8-alpine

MAINTAINER q1zhang@odu.edu
MAINTAINER jgkong@ibm.com

ADD index.jsp /usr/local/tomcat/webapps/ROOT
ADD server.xml web.xml context.xml /usr/local/tomcat/conf
ADD rootweb.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/web.xml

RUN chmod g+w /usr/local/tomcat/webapps/ROOT
