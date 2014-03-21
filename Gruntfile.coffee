module.exports = (grunt) ->

    grunt.initConfig
        pkg: grunt.file.readJSON "package.json"

        watch:
            reset:
                files: ["index.styl"]
                tasks: ["stylus:reset", "stylus:resetMin"]
            tests:
                files: ["tests/*.stylus", "tests/*.coffee"]
                tasks: ["stylus:tests", "coffeecup:tests"]

        stylus:
            resetMin:
                options:
                    compress: true
                    use: [require("nib")]
                files: "reset.min.css": "index.styl"
            reset:
                options:
                    compress: false
                    use: [require("nib")]
                files: "reset.css": "index.styl"
            tests:
                options:
                    compress: false
                    use: [require("nib")]
                files: "tests/style.css": "tests/style.styl"

        coffeecup:
            tests:
                expand: false
                options:
                    lodash: require "lodash"
                files: "tests/index.html": "tests/index.coffee"

    grunt.loadNpmTasks "grunt-contrib-watch"
    grunt.loadNpmTasks "grunt-contrib-stylus"
    grunt.loadNpmTasks "grunt-coffeecup"