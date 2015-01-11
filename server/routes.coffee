###
Main application routes
###

"use strict"

errors = require "./components/errors"
express = require "express"
bodyParser = require "body-parser"

module.exports = (app) ->
  config = app.get "config"
  clientPath = app.get "appPath"

  staticPath = (relPath) ->
    client = app.get "appPath"
    express.static client + relPath

  # config middleware
  app.use bodyParser.json()

  # partials
  # app.get "/partials/:name", (req, res) ->
  #  res.render app.get("appPath") + "/app/partials/" + req.params.name
  
  # styles
  app.use "/css",   staticPath "/app/css/"
  app.use "/fonts", staticPath "/app/fonts/"
  app.use "/js",    staticPath "/app/js/"
  app.use "/img",   staticPath "/app/img/"

  # all undefined asset or api routes should return a 404
  app.route("/:url(api|auth|components|app|bower_components|assets)/*").get errors[404]
  
  # all other routes should redirect to the index.html
  app.route("/*").get (req, res) ->
      res.render app.get("appPath") + "/index"

  return
