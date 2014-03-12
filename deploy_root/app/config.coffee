require.config {
  paths:
    vendors: "../static/vendors"
    underscore: "../static/vendors/lodash/dist/lodash.underscore"
    jquery: "../static/vendors/jquery/dist/jquery"
    backbone: "../static/vendors/backbone/backbone"
    moment: "../static/vendors/momentjs/moment"
  shim:
    backbone:
      deps: ["jquery", "underscore"]
      exports: "Backbone"
}