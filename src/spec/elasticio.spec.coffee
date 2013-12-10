elasticio = require('../elasticio.js')
Config = require '../config'

describe "elasticio file integration", ->
  xit "with no attachments nor body", (done) ->
    cfg =
      clientId: ''
      clientSecret: ''
      projectKey: ''
    msg = ''
    elasticio.process msg, cfg, (next) ->
      expect(next.message.status).toBe false
      expect(next.message.msg).toBe 'No data found in elastic.io msg.'
      done()