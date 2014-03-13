define (require, exports, module) ->
  "use strict"

  Backbone = require "backbone"
  $ = require "jquery"
  roomList = require "roomList"
  room = require "room"

  roomList.init()

  module.exports = Backbone.Router.extend {
    routes:
      "": "index"
      "room/:roomId": "room"
    index: () ->
      console.log "index"
    room: (roomId) ->
      console.log "roomId: " + roomId
      roomList.setActive(roomId);
      room.init(roomId)

  }