###
Keys configuration
###

"use strict"

# load keys into environment if dev
if process.env.NODE_ENV is "dev"
  env = require("node-env-file")
  
  # only local environments should have keys.env
  env __dirname + "/keys.env"

# use for your api keys, secrets, etc.
module.exports =
  keys:
    sample:
      key: process.env.SAMPLE_KEY
