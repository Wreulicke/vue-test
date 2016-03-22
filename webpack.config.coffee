path = require 'path'
webpack = require("gulp-webpack").webpack
BowerWebpackPlugin = require "bower-webpack-plugin"

cwd = ->
  args = ['./'].concat(Array::slice.apply arguments)
  console.log args
  path.join.apply(path, args)

module.exports =
  entry:
    app: './src/ts/entry.ts'
  output:
    filename: '[name].js'
  resolve:
    root: [
      cwd('bower_components')
      cwd('src')
    ]
    moduleDirectories: ["bower_components"]
    extensions: [
      '', '.ts', '.webpack.js', '.web.js', '.js', '.jade'
    ]
  module:
    loader: [
      { test: /\.ts$/, loader: 'ts-loader' }
      { test: /\.jade$/, loader: 'jade-loader' }
    ]
  plugins: [
    new BowerWebpackPlugin()
  ]
