gulp = require 'gulp'
$ = require('gulp-load-plugins')()

gulp.task 'test', ->
  console.log('aaa')

console.log $
plumber = ->
  $.plumber(
    errorHandler: (err) ->
      console.log(err.messageFormatted)
      @emit('end')
  )
vulcanize = ->
  $.vulcanize
    inlineScripts: true
    inlineCss: true
    stripExcludes: true

gulp.task 'jade', ->
  gulp.src("src/index.jade")
  .pipe plumber()
  .pipe $.jade()
  .pipe gulp.dest 'target'

gulp.task 'webpack', ->
  gulp.src("src/*")
    .pipe plumber()
    .pipe $.webpack require './webpack.config'
    .pipe gulp.dest 'target'

gulp.task 'vulcanize', ->
  gulp.src('target/index.html')
  .pipe plumber()
  .pipe vulcanize()
  .pipe gulp.dest './vulcanized/'
