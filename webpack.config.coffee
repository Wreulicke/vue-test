path = require 'path'
webpack = require("webpack")
BowerWebpackPlugin = require "bower-webpack-plugin"

cwd = ->
  args = ['./'].concat(Array::slice.apply arguments)
  path.join.apply(path, args)

module.exports =
  entry:
    app: [
      "webpack-dev-server/client?http://localhost:8080", './src/ts/entry.ts']
  output:
    path: path.resolve "./target"
    publicPath: "/target/"
    filename: '[name].js'
  resolve:
    root: [
      path.resolve('bower_components')
      path.resolve('./src')
      path.resolve('node_modules')
    ]
    moduleDirectories: ['node_modules','bower_components']
    extensions: [
      '', '.ts', '.webpack.js', '.web.js', '.js', '.jade'
    ]
  module:
    loaders: [
      { test: /\.ts$/, loader: 'ts-loader' }
      { test: /\.jade$/, loader: 'jade-loader' }
    ]
  plugins: [
    new webpack.HotModuleReplacementPlugin()
  ]
  devServer:
    contentBase: "."
    port: 8080
    hot: true
    inline: true
