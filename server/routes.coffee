###
Main application routes
###

"use strict"

errors = require "./components/errors"
express = require "express"
# bodyParser = require "body-parser"

module.exports = (app) ->
  config = app.get "config"
  clientPath = app.get "appPath"

  staticPath = (dir) ->
    client = app.get "appPath"
    express.static client + '/app' + dir

  # config middleware
  # app.use bodyParser.json()

  # partials
  # app.get "/partials/:name", (req, res) ->
  #  res.render app.get("appPath") + "/app/partials/" + req.params.name
  
  # styles
  # TODO remove css
  app.use "/css",   staticPath "/css"
  app.use "/styles",staticPath "/styles"
  app.use "/fonts", staticPath "/fonts"
  app.use "/js",    staticPath "/js"
  app.use "/img",   staticPath "/img"
  app.use "/icons", staticPath "/icons"
  app.use "/submodules", staticPath "/submodules"

  # all undefined asset or api routes should return a 404
  app.route("/:url(api|auth|components|app|bower_components|assets)/*").get errors[404]
  
  # all other routes should redirect to the index.html
  app.route("/*").get (req, res) ->
      res.render app.get("appPath") + "/index"

  return
