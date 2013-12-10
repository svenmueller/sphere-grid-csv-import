_ = require('underscore')._
Config = require '../config'
InventorySync = require('sphere-node-sync').InventorySync

Q = require 'q'
ProgressBar = require 'progress'

exports.GridCsvImport = (options) ->
  @_options = options
  @sync = new InventorySync Config
  @rest = @sync._rest
  @

exports.GridCsvImport.prototype.elasticio = (msg, cfg, cb, snapshot) ->
  if msg.attachments
    console.log 'has attachments'
  else if msg.body
    console.log 'has body'
  else
    console.log 'no data'
  @