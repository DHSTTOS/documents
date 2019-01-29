## Challenges
### technologies:
requirements: kafka, mongodb, (javascript, d3)  
chosen by us: java, React, websockets, mobx
### data size:
20GB: 50 mio data sets/packets, need to be able to drill down to individual ones


## Process

- what did we remove/change after Mike left?
- when did we learn about the 20GB data size?
  => effectively a new requirement: aggregation/data processing on the backend


### design patterns
#### frontend
- MVC?,
- observer
- template (for websockets)
#### backend
- strategy
- template (for websockets)


XXX should we use abstract factory for data processing?
 probably not worth it


