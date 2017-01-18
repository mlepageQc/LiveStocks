module.exports = {
  entry: ['./app/front_end/entry.js'],
  output: {
    path: '/public/assets',
    filename: 'bundle.js'
  },
  devtools: 'source-map',
  resolve: {
    alias: {
        'vue$': 'vue/dist/vue.common.js'
    },
    extensions: ['', '.js', '.vue']
  },
  plugins: [],
  devServer: {
    proxy: {
      '*': 'http://localhost:3000'
    }
  },
  module: {
    loaders: [
      {
        test: /\.js$/,
        loader: 'babel',
        exclude: /node_modules/
      },
      {
        test: /\.vue$/,
        loader: 'vue'
      }
    ]
  },
  vue: {
    loaders: {
      js: 'babel'
    }
  }
}
