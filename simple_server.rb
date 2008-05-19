# Simple Webserver in Ruby
# author: Anil Wadghule
#!ruby
require 'socket'
port = ARGV[0] || '3002'.to_i
server = TCPServer.new('localhost', port)
while (sess = server.accept)
  puts "Request: #{sess.gets}"
  sess.print "HTTP/1.1 200/OK\r\nContent-type: text/html\r\n\r\n"
  sess.print "<html><body><h1>#{Time.now}</h1></body></html>\r\n"
  sess.close
end
