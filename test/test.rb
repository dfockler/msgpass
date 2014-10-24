require '../lib/msgpass/client'
require '../lib/msgpass/server'

#initialize on port 8000 and start it
server = Msgpass::Server.new(8000)
server.start

client = Client.new(4567, '127.0.0.1')
client.close
