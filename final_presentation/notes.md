## Challenges
### technologies:
requirements: kafka, mongodb, (javascript, d3)  
chosen by us: java, React, websockets, mobx
### data size:
20GB: 50 mio data sets/packets, need to be able to drill down to individual ones


## Process

- XXX what did we remove/change after Mike left?
- XXX when did we learn about the 20GB data size?
  => effectively a new requirement: aggregation/data processing on the backend


### Design patterns and architectural patterns
#### frontend
- MVC?,
- observer
- template (for websockets)

#### backend
- Hub in Tomcat: template, inversion of control (for websockets)
- ClientProtocolHandler: strategy
- template (for websockets)

- factory method? for IUserSession-classes?

- MongoDBUserSession: a proxy? decorator?
   or is "holding a session" too much own functionality to make it a mere proxy/decorator?

 
### technologies used:
 front-end: Javascript, d3, React, nivo (, MobX)
 back-end: Java, Kafka, MongoDB, Apache Tomcat (, Gson)
 development tools: junit, which javascript unit test lib?, emma?, git, github, maven


## Lessons learned:
- git/version control:
  - perhaps a bad idea to have documents in their own branches, because then adding changes to code and documentation are in separate commits


## Conclusion

- we only just left the flat part of the "showy results"-vs-effort curve
- what grade would we give Ankush/Fraunhofer?   2-3?
-- not getting a server for testing - even a virtual one - is a minus



XXX should we use abstract factory for data processing?
 probably not worth it


