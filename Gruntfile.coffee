stylusBanner = (pkg) ->
    "/*\r\nResetCSS / reset-css / vc-reset-css\r\n#{pkg.version}\r\nVan Civelik <vancivelik@gmail.com>\r\nFull reset CSS, including browser styling.\r\nhttp://github.com/vancivelik/reset-css.git\r\n*/\r\n"

module.exports = (grunt) ->

    grunt.initConfig
        pkg: grunt.file.readJSON "package.json"

        watch:
            reset:
                files: ["index.styl"]
                tasks: ["stylus:reset", "stylus:resetMin"]

        stylus:
            resetMin:
                options:
                    compress: true
                    use: [require("nib")]
                    banner: stylusBanner grunt.file.readJSON "package.json"
                files: "reset.min.css": "index.styl"
            reset:
                options:
                    compress: false
                    use: [require("nib")]
                    banner: stylusBanner grunt.file.readJSON "package.json"
                files: "reset.css": "index.styl"

    grunt.loadNpmTasks "grunt-contrib-watch"
    grunt.loadNpmTasks "grunt-contrib-stylus"
    grunt.loadNpmTasks "grunt-coffeecup"

    grunt.registerTask "default", "watch"