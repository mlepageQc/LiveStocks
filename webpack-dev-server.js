var webpack = require("webpack");
var webpackDevServer = require("webpack-dev-server");
var config = require("./webpack.config.js");
config.entry.unshift("webpack-dev-server/client?http://localhost:8080/", "webpack/hot/dev-server");
config.plugins.unshift(new webpack.HotModuleReplacementPlugin());
var compiler = webpack(config);
var server = new webpackDevServer(compiler, {
  hot: true
});
server.listen(8080);
