module.exports = (grunt) ->

    grunt.initConfig
        pkg: grunt.file.readJSON "package.json"

        watch:
            reset:
                files: "src/*.styl"
                tasks: ["stylus:resetWithoutCompress", "stylus:resetWithCompress"]
            tests:
                files: "tests/src/*"
                tasks: ["stylus:tests", "coffeecup:tests"]

        stylus:
            resetWithCompress:
                options:
                    compress: true
                    use: [require("nib")]
                files: "dist/reset.min.css": "src/reset.styl"
            resetWithoutCompress:
                options:
                    compress: false
                    use: [require("nib")]
                files: "dist/reset.css": "src/reset.styl"
            tests:
                options:
                    compress: false
                    use: [require("nib")]
                files: "tests/dist/style.css": "tests/src/style.styl"

        coffeecup:
            tests:
                expand: false
                options:
                    lodash: require "lodash"
                files: "tests/dist/index.html": "tests/src/index.coffee"

    grunt.loadNpmTasks "grunt-contrib-watch"
    grunt.loadNpmTasks "grunt-contrib-stylus"
    grunt.loadNpmTasks "grunt-coffeecup"