require 'socket'

module Msgpass

	class Server
		attr_accessor :port
		attr_reader :server

		def initialize(port)
			@port = port
			@server = TCPServer.new(@port)
		end

		def start
			@server = TCPServer.new(@port)

			loop do
				client = server.accept
				client.puts "Hello !"
				client.puts "Time is #{Time.now}"
				client.close
			end
		end

		def self.stop
			#stop the server from reading and writing
			@server.shutdown(:WR)
		end
	end

end