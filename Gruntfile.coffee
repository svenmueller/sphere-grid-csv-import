'use strict'

module.exports = (grunt)->
  # project configuration
  grunt.initConfig
    # load package information
    pkg: grunt.file.readJSON 'package.json'

    meta:
      banner: "/* ===========================================================\n" +
        "# <%= pkg.name %> - v<%= pkg.version %>\n" +
        "# ==============================================================\n" +
        "# Copyright (c) 2013 <%= pkg.author.name %>\n" +
        "# Licensed under the MIT license.\n" +
        "*/\n"

    coffeelint:
      options:
        indentation:
          value: 2
          level: "error"
        no_trailing_semicolons:
          level: "error"
        no_trailing_whitespace:
          level: "error"
        max_line_length:
          level: "ignore"
      default: ["Gruntfile.coffee", "src/**/*.coffee"]

    clean:
      default: "lib"
      test: "test"

    coffee:
      options:
        bare: true
      default:
        expand: true
        flatten: true
        cwd: "src/coffee"
        src: ["*.coffee"]
        dest: "lib"
        ext: ".js"
      test:
        expand: true
        flatten: true
        cwd: "src/spec"
        src: ["*.spec.coffee"]
        dest: "test"
        ext: ".spec.js"

    concat:
      options:
        banner: "<%= meta.banner %>"
      default:
        expand: true
        flatten: true
        cwd: "lib"
        src: ["*.js"]
        dest: "lib"
        ext: ".js"

    # watching for changes
    watch:
      default:
        files: ["src/coffee/*.coffee"]
        tasks: ["build"]
      test:
        files: ["src/**/*.coffee"]
        tasks: ["test"]

    shell:
      options:
        stdout: true
        stderr: true
        failOnError: true
      jasmine:
        command: "jasmine-node --captureExceptions test"
      run:
        command: "node lib/run.js catelog.csv"

  # load plugins that provide the tasks defined in the config
  grunt.loadNpmTasks "grunt-coffeelint"
  grunt.loadNpmTasks "grunt-contrib-clean"
  grunt.loadNpmTasks "grunt-contrib-concat"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-shell"

  # register tasks
  grunt.registerTask "build", ["clean", "coffeelint", "coffee", "concat"]
  grunt.registerTask "test", ["build", "shell:jasmine"]
