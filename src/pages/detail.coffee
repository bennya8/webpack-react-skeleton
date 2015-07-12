React = require "react"
AMR = require "amazeui-react"

Header = require "../components/header"

NewsService = require "../services/news"

Detail = React.createClass(
	getInitialState: ->
		return {
			news: {}
		}

	componentDidMount: ->
		_this = this
		id = this.props.params.id
		type = this.props.params.type

		NewsService.getDetail(id,type,(result)->
				if result.code == 0
					_this.setState({news:result.data})
			)


	render: ->
		return (
			<AMR.Grid>
				<Header/>
				<AMR.Titlebar title={this.state.news.title} />
				<AMR.Thumbnail src={this.state.news.cover} />
				<AMR.Article>
				</AMR.Article>
			</AMR.Grid>				
		)
)

module.exports = Detail