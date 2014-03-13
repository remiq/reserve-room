define (require, exports, module) ->
  "use strict"

  Backbone = require "backbone"

  self =
    v: false
    model: Backbone.Model.extend {
      url: '../static/fake/room_a.json'
    }
    view: Backbone.View.extend {
      template: _.template $("#template-room").html()
      initialize: (options) ->
        @model.on "change", @render, this
      render: () ->
        $("#content").html @template @model.toJSON()
    }
    init: (roomId) ->
      console.log "Loading Room " + roomId
      self.v = new self.view {
        model: new self.model
      }
      self.v.model.fetch()
  module.exports = self