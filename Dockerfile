FROM debian:jessie

MAINTAINER Tim Lien, timlientw@gmail.com

# Get unzip
RUN apt-get update && apt-get install -y \
	unzip \
	wget

# Install Java.
RUN apt-get install default-jdk -y

# Download Saiku
RUN wget -P /usr/local http://meteorite.bi/downloads/saiku-latest.zip

# Unzip saiku to /usr/local
RUN unzip -u /usr/local/saiku-latest.zip -d /usr/local

# Remove wget and zip
RUN apt-get remove wget
RUN rm /usr/local/saiku-latest.zip

EXPOSE 8080

CMD /usr/local/saiku-server/start-saiku.sh && tail -f /usr/local/saiku-server/tomcat/logs/catalina.out