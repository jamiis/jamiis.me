###
Application configuration
###

"use strict"

path = require("path")
_ = require("lodash")
nodeEnv = process.env.NODE_ENV

# all configurations will extend these options
# ============================================
all =
  env: nodeEnv
  
  # root path of server
  root: path.normalize(__dirname + "/../../..")
  
  # server port
  port: process.env.PORT or 3000


# export the config object based on the NODE_ENV.
# ==============================================
module.exports = _.merge.apply(_, [
  all
  require("./" + nodeEnv + ".js") or {}
  require("./keys.js") or {}
])
