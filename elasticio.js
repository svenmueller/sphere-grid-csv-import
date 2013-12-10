GridCsvImport = require('./lib/gridcsvimport').GridCsvImport

exports.process = function(msg, cfg, cb, snapshot) {
  config = {
    client_id: cfg.clientId,
    client_secret: cfg.clientSecret,
    project_key: cfg.projectKey
  };
  var im = new GridCsvImport({
    config: config
  });
  im.elasticio(msg, cfg, cb, snapshot);
}