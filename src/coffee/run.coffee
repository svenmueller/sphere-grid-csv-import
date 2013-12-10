fs = require("fs")
Config = require("../config")
GridCsvImport = require("../lib/gridcsvimport").GridCsvImport

Config.timeout = 120000
gridcsvimport = new GridCsvImport Config

# get file name from command line option
fileName = ""
process.argv.forEach (val, index, array) ->
  fileName = val if index is 2

fs.readFile fileName, "utf8", (err, content) ->
  if err
    console.error "Problems on reading file: " + error
    process.exit 1
  gridcsvimport.run content, (result) ->
    if not result.message.status
      console.log result