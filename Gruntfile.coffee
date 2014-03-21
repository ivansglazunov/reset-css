module.exports = (grunt) ->

    grunt.initConfig
        pkg: grunt.file.readJSON "package.json"

        watch:
            default:
                files: ["style.styl", "index.coffee"]
                tasks: ["stylus:default", "coffeecup:default"]

        stylus:
            default:
                options:
                    compress: true
                    use: [require("nib")]
                files: "style.min.css": "style.styl"

        coffeecup:
            default:
                expand: false
                options:
                    lodash: require "lodash"
                files: "index.html": "index.coffee"

    grunt.loadNpmTasks "grunt-contrib-watch"
    grunt.loadNpmTasks "grunt-contrib-stylus"
    grunt.loadNpmTasks "grunt-coffeecup"