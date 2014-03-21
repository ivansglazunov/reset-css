module.exports = (grunt) ->

    grunt.initConfig
        pkg: grunt.file.readJSON "package.json"

        watch:
            reset:
                files: ["../master/reset.min.css"]
                tasks: ["copy:default"]
            index:
                files: ["style.styl", "index.coffee"]
                tasks: ["stylus:default", "coffeecup:default"]

        copy:
            default:
                files: [
                    src: "../master/reset.min.css", dest: "reset.min.css"
                ]

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
                    pkg: grunt.file.readJSON "../master/package.json"
                files: "index.html": "index.coffee"

    grunt.loadNpmTasks "grunt-contrib-watch"
    grunt.loadNpmTasks "grunt-contrib-copy"
    grunt.loadNpmTasks "grunt-contrib-stylus"
    grunt.loadNpmTasks "grunt-coffeecup"

    grunt.registerTask "default", "watch"