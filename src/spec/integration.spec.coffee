Config = require '../config'
GridCsvImport = require('../lib/gridcsvimport').GridCsvImport
Q = require('q')

# Increase timeout
jasmine.getEnv().defaultTimeoutInterval = 20000

describe '#run', ->
  beforeEach (done) ->
