###
Express configuration
###

"use strict"

express = require("express")
favicon = require("serve-favicon")
path = require("path")
config = require("./env")

module.exports = (app) ->
  env = app.get("env")
  app.set "views", config.root + "/server/views"
  app.set "view engine", "jade"
  app.use express.static(path.join(config.root, "client"))
  app.set "appPath", config.root + "/client"

  ### TODO configure favicon and error handler
  if env is 'dev'
    app.use(favicon(path.join(config.root, 'public', 'favicon.ico')));

  elif env is 'dev'
    app.use(errorHandler()); // Error handler - has to be last
  ###

  return
