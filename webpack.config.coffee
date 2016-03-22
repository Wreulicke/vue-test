path = require 'path'
webpack = require("gulp-webpack").webpack
BowerWebpackPlugin = require "bower-webpack-plugin"

cwd = ->
  args = ['./']
  args.unshift.apply args, arguments
  path.join.apply(path, args)

module.exports =
  entry:
    app: './src/ts/entry.ts'
  output:
    filename: '[name].js'
  resolve:
    root: [
      cwd('bower_components')
    ]
    moduleDirectories: ["bower_components"]
    extensions: [
      '', '.ts', '.webpack.js', '.web.js', '.js', 'jade'
    ]
  module:
    loader: [
      { test: /\.ts$/, loader: 'ts-loader' }
    ]
  plugins: [
    new BowerWebpackPlugin()
  ]
