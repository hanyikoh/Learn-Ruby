require 'socket'

body = <<~EOF
    GET / HTTP/1.0\r
    Host: localhost:3000\r
    \r
  EOF

Socket.tcp("localhost", 3000){|sock|
    # sock.print body
    # sock.close_write
    puts sock.read
    # sock.close_write
}