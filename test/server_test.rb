require "minitest/autorun"

require "msgpass"

class ServerTest < Minitest::Unit::TestCase
  def test_server
    server = Msgpass::Server.new
    assert_instance_of Msgpass::Server, server
  end

  def test_server_output
    server = Msgpass::Server.new
    assert_equal "Hey Dude", server.say_hello
  end
end