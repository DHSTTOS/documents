# Deployment/Installation Manual for the ADIN Inspector System

## Tested software environment:
(With frontend and backend on the same server)
Ubuntu 18.04.1 LTS

default-jdk 2:1.10-63ubuntu1~02 amd64
default-jdk-headless 2:1.10-63ubuntu1~02 amd64
openjdk-11-jdk:amd64 10.0.2+13-1ubuntu0.18.04.4 amd64
openjdk-11-jdk-headless:amd64     10.0.2+13-1ubuntu0.18.04.4 amd64
openjdk-11-jre:amd64 10.0.2+13-1ubuntu0.18.04.4 amd64
openjdk-11-jre-headless:amd64 10.0.2+13-1ubuntu0.18.04.4 amd64

kafka_2.12-2.1.0 
zookeeper 3.4.10-3--1

mongodb-org 4.0.5 amd64
mongodb-org-mongos 4.0.5 amd64
mongodb-org-server 4.0.5 amd64
mongodb-org-shell 4.0.5 amd64
mongodb-org-tools 4.0.5 amd64

XXX tomcat

nodejs 8.10.0~dfsg-2ubuntu0.4 amd64


### Alternative software environment:
(With frontend and backend on the same server)
FreeBSD 13.0-CURRENT
openjdk8-8.192.26
kafka-2.1.0
zookeeper-3.4.12
mongodb36-3.6.6_2
tomcat9-9.0.13
node-11.9.0


## Configuration of the backend server
### Kafka
### MongoDB
### Apache Tomcat
#### tomcat configuration
May vary depending on the specific underlying OS.
On digital ocean's droplet hooking tomcat up to the systemd demon resulted in the server aborting and restarting in a loop; starting tomcat manually (with "catalina.sh start" as tomcat user) did work.
\\
Note: Tomcat needs random numbers on start (reads /dev/random or so) for ssl stuff; if the server it's running on is low on entropy (e.g. because it sees little network traffic and other activity) this can cause a delay before Tomcat actually starts to handle network requests, of up to 3 minutes.


#### the webapps/adininspector content
- copy the .jar (also the gson.jar?) to webapps/adininspector/WEB-INF/libs/
- optional, for testing: copy and make readable the websockclient2.html file.

### Firewall
If a firewall is installed, open the following ports for incoming connections:
- 80, 443 for production
- 1234, 3000 (optional, for testing with npm-based webserver
- 8080, 8433 needed in the development environment, not for production

## Configuration of the frontend server
### Webserver
\begin{itemize}
\item{install and configure the webserver}
\item{set up the directory with the web pages and javascript stuff}
\end{itemize}

### Firewall
If a firewall is installed, open the following ports for incoming connections:
- 80, 443 for production
- 1234, 3000 (optional, for testing with npm-based webserver)
- 8080, 8433 needed in the development environment, not for production

