path = require 'path'
webpack = require("webpack")
BowerWebpackPlugin = require "bower-webpack-plugin"

cwd = ->
  args = ['./'].concat(Array::slice.apply arguments)
  path.join.apply(path, args)

module.exports =
  entry:
    app: './src/ts/entry.ts'
  output:
    filename: '[name].js'
  resolve:
    root: [
      path.resolve('./bower_components')
      path.resolve('./src')
      cwd('node_modules')
    ]
    moduleDirectories: ['node_modules', "bower_components"]
    extensions: [
      '', '.ts', '.webpack.js', '.web.js', '.js', '.jade'
    ]
  module:
    loaders: [
      { test: /\.ts$/, loader: 'ts-loader' }
      { test: /\.jade$/, loader: 'jade-loader' }
    ]
  plugins: [
  ]
