###Decentralized Client Server Communications Library in Ruby
a platform to build decentralized P2P client/server apps

##Goals
###Should be a platform to build on
* Developers can build apps that communicate via P2P system
* API should be simple to develop with

###Basic ideas
* Nodes know which other nodes it's connected to
* Nodes can send messages to other known nodes
	* Nodes can send messages to all other known nodes
	* Nodes can send messages to subset of known nodes
	* Nodes can send messages to a specific other node
	* Nodes can send messages to all other known and unknown nodes
* Nodes can recieve messages from other nodes
* Nodes can pass messages through other nodes if recipient is known
* Uses a standard routing algorithm like BGP, RIP, etc
* Networking is transparent to the developer
	* Dev should be focused on node interaction, not message transportation
* Will operate over TCP/IP using ruby `socket` library
