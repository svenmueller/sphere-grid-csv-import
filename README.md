# sphere-grid-csv-import [![Build Status](https://secure.travis-ci.org/svenmueller/sphere-grid-csv-import.png?branch=master)](http://travis-ci.org/svenmueller/sphere-grid-csv-import)

This repository contains a mapping compontent to translate products from GRID CSV data into SPHERE.IO products JSON format.

## Getting Started
Install the module with: `npm install sphere-grid-csv-import`

Put your SPHERE.IO credentials into `config.js` or generate it with execute `./create_config.sh`.

```javascript
var gridCsvImport = require('sphere-grid-csv-import').GridCsvImport;
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/).

## License
Copyright (c) 2013 Hajo Eichler,Nicola Molinari, Sven Mueller
Licensed under the MIT license.