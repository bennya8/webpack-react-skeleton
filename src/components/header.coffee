React = require "react"
AMUIReact = require "amazeui-react"
AMHeader = AMUIReact.Header

props = {
  "title": "心灵氧吧",
  "link": "/",
  data: {
    "left": [
      {
        "link": "#/",
        "icon": "home"
       }
    ],
    "right": [
      {
        "link": "#right-link",
        "icon": "bars"
      }
    ]
  }
}

Header = React.createClass(

  render: ->
    return (

      <AMHeader {...props}/>
    )
)

module.exports = Header