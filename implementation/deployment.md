# Deployment/Installation Manual for the ADIN Inspector System

## Tested software environment:
(With frontend and backend on the same server)
Ubuntu 18.04.1 LTS

default-jdk 2:1.10-63ubuntu1\~02 amd64  
default-jdk-headless 2:1.10-63ubuntu1\~02 amd64  
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

### Apache Tomcat server
#### Installing Tomcat
see e.g.
 https://www.digitalocean.com/community/tutorials/install-tomcat-9-ubuntu-1804

#### Configuring Tomcat
May vary depending on the specific underlying OS.
On digital ocean's droplet hooking tomcat up to the systemd demon resulted in the server aborting and restarting in a loop; starting tomcat manually (with "catalina.sh start" as tomcat user) did work.

Note: There can be a possibly long delay (10+ minutes) between starting Tomcat and it actually starting to respond to network access. The reason is that Tomcat needs random numbers on start (reads /dev/random or so) for ssl stuff; if the server it is running on is low on entropy (e.g. because it sees little network traffic and other activity) then it will take time to collect enough entropy.
Workaround: Generate network traffic, e.g. log in via ssh and run "ls -lR /". This should reduce the delay to less than one minute.


#### Installing the webapps/adininspector content
(In the following, all paths are relative to Tomcat's base director, e.g. /opt/tomcat/ .)

- copy the .jar (also the gson.jar?) to webapps/adininspector/WEB-INF/lib/
- optional, for testing: copy websockclient2.html to webapps/adininspector/

#### Starting the Apache Tomcat server
    sudo -u tomcat bash
    cd /opt/tomcat
    ./bin/catalina.sh start

check the main log file, ./logs/catalina.out , for a line like this:  
    18-Feb-2019 19:50:36.430 INFO [main] org.apache.catalina.startup.Catalina.start Server startup in [81,226] milliseconds

to stop the tomcat server:
    ./bin/catalina.sh stop


### Firewall
If a firewall is installed, open the following ports for incoming connections:
- 80, 443 for production
- 1234, 3000 (optional, for testing with npm-based webserver
- 8080, 8433 needed in the development environment, not for production

## Configuration of the frontend server
### Webserver
- install and configure the webserver
- set up the directory with the web pages and javascript stuff

### Firewall
If a firewall is installed, open the following ports for incoming connections:
- 80, 443 for production
- 1234, 3000 (optional, for testing with npm-based webserver)
- 8080, 8433 needed in the development environment, not for production

