require 'socket'

module Msgpass

	class Client

		attr_accessor :port, :host
		attr_reader :client

		def initialize(host, port)
			@host = host
			@port = port
			@client = TCPSocket.open(@host, @port)
		end

		def connect
			while line = @client.gets
				puts line.chop
			end
		end

		def close
			@client.close
		end
	end

end