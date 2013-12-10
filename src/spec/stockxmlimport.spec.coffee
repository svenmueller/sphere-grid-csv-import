Config = require '../config'
GridCsvImport = require('../lib/gridcsvimport').GridCsvImport

describe 'GridCsvImport', ->
  beforeEach ->
    @import = new GridCsvImport('foo')

  it 'should initialize', ->
    expect(@import).toBeDefined()

  it 'should initialize with options', ->
    expect(@import._options).toBe 'foo'
