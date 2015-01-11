###
Main application file
###
"use strict"

# set default node env to dev
process.env.NODE_ENV = process.env.NODE_ENV or "prod"

config = require "./config/env"
http = require "http"
http.globalAgent.maxSockets = Infinity

# ... server setup ... //
express = require("express")
app = express()
server = http.createServer(app)
app.set "server", server
app.set "config", config
require("./config/express") app

# setup web socket
# io = require("socket.io").listen(server)
# app.set "io", io

# setup server services and start listening
require("./routes") app
server.listen config.port, ->
console.log "listening on %d, in %s mode", config.port, app.get("env")

# expose app
exports = module.exports = app
