define (require, exports, module) ->
  "use strict"

  Backbone = require "backbone"
  $ = require "jquery"

  module.exports = Backbone.Router.extend {
    routes:
      "": "index"
      "room/:roomId": "room"
    index: () ->
      console.log "index"
    room: (roomId) ->
      console.log "roomId: " + roomId

  }