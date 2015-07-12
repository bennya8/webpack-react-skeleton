React = require "react"
ReactCSSTransitionGroup = React.addons.CSSTransitionGroup;

Router = require "react-router"
Route = Router.Route
DefaultRouter = Router.DefaultRoute
RouteHandler = Router.RouteHandler

# App Handler
App = React.createClass(

  render: ->
    return (
      <div classNames="app-container">
        <ReactCSSTransitionGroup transitionName="app-view">
          <RouteHandler/>
        </ReactCSSTransitionGroup>
      </div>
    )
)

# Pages
Index = require "./pages/index"
Detail = require "./pages/detail"

# Router
routes = (
  <Route path="/" handler={App}>
    <DefaultRouter handler={Index}/>
    <Route name="detail" handler={Detail} path="/detail/:type/:id"/>
  </Route>
)

Router.run(routes, (Handler) ->
  React.render <Handler/>, document.getElementById 'content'
)