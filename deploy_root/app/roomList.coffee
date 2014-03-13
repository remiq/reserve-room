define (require, exports, module) ->
  "use strict"

  Backbone = require "backbone"

  self =
    v: false
    activeRoomId: 0
    listModel: Backbone.Model.extend {
      url: '../static/fake/rooms.json'
    }
    listView: Backbone.View.extend {
      template: _.template $('#template-list').html()
      initialize: (options) ->
        @model.on "change", @render, this
      render: () ->
        $("#sidebar").html @template @model.toJSON()
        self.setActive self.activeRoomId
    }
    init: () ->
      self.v = new self.listView {
        model: new self.listModel
      }
      self.v.model.fetch()
    setActive: (roomId) ->
      $("#liRoom"+roomId).parent().children("li").removeClass("active");
      $("#liRoom"+roomId).addClass("active");
      self.activeRoomId = roomId

  module.exports = self

