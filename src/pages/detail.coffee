React = require "react"
AMR = require "amazeui-react"

Header = require "../components/header"


Detail = React.createClass(
	componentDidMount: ->
		console.log(this.props.params)


	render: ->
		return (
			<AMR.Grid>
				<Header/>
			</AMR.Grid>				
		)
)

module.exports = Detail