connect = require "connect"
server = connect.createServer connect.static __dirname
server.listen 8080
