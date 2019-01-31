# Deployment/Installation Manual for the ADIN Inspector System
## On the backend server
### Kafka
### MongoDB
### Apache Tomcat
#### tomcat configuration
- May depend on the specific underlying OS.
On digital ocean's droplet hooking tomcat up to the systemd demon resulted in the server aborting and restarting in a loop; starting tomcat manually when logged in as tomcat user did work.

#### the webapps/adininsspector content
- copy the .jar (also the gson.jar?)
- optional, for testing: copy and make readable the websockclient2.html file.

### Firewall
If a firewall is installed, allow ports
- 80, 443
- 3000 (optional, for testing with npm-based webserver)
- 8080, 8433

## On the frontend server
### Webserver
- install and configure the webserver
- set up the directory with the web pages and javascript stuff

### Firewall
If a firewall is installed, allow ports
80, 443
3000 (perhaps, for testing with npm-based webserver)
8080, 8433 (optional)
