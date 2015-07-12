module.exports = {
  entry: "./src/app.coffee",
  output: {
    path: "./dist",
    // publicPath: "/dist/",
    filename: "bundle.js",
    publicPath: 'http://localhost:8090/assets'
  },
  module: {
    loaders: [
      {
        //tell webpack to use jsx-loader for all *.jsx files
        test: /\.jsx$/,
        loader: 'jsx-loader?insertPragma=React.DOM&harmony'
      },
      { test: /\.coffee/, loader: "coffee-jsx-loader" },
      { test: /\.styl$/, loader: "style!css!stylus" },
      { test: /\.html$/, loader: "html" },
      { test: /\.css$/, loader: 'style-loader!css-loader' }
    ]
  },
  externals: {
    //don't bundle the 'react' npm package with our bundle.js
    //but get it from a global 'React' variable
    'react': 'React'
  },
  resolve: {
    extensions: ['', '.js', '.jsx','.cjsx','.coffee']
  }
}