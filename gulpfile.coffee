gulp = require 'gulp'
$ = require('gulp-load-plugins')()
run = require 'run-sequence'
gulp.task 'test', ->
  console.log('aaa')

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

gulp.task 'less', ->
  gulp.src('src/less/**/*.less',base:'src/less')
  .pipe plumber()
  .pipe $.less()
  .pipe gulp.dest 'target/css'

gulp.task 'webpack', ->
  gulp.src("src/**/*")
    .pipe plumber()
    .pipe $.webpack require './webpack.config'
    .pipe gulp.dest 'target'

gulp.task 'vulcanize', ->
  gulp.src('target/index.html')
  .pipe plumber()
  .pipe vulcanize()
  .pipe gulp.dest './vulcanized/'

gulp.task 'default', (cb) ->
  run(
    ['jade','less'],
    'webpack',
    'vulcanize',
    cb
  )
