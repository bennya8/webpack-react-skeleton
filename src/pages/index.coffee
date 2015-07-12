React = require "react"
AMR = require "amazeui-react"

Header = require "../components/header"

NewsService = require "../services/news"

Index = React.createClass(
	getInitialState: ->
		return {
			newsList: {
				'main': []
			}
		}

	componentDidMount: ->
		_this = this
		NewsService.getList(
			(result) ->
				items = []
				if result.code == 0
					for v in result.data
						items.push({
							'title': v.title,
							'link': '#detail/'+v.type+'/'+v.id,
							'desc': v.title,
							'img': v.cover
						})

				_this.setState({'newsList':{'main':items}})

		)
		return

	render: ->
		return (
				<AMR.Grid>
					<Header/>
					<AMR.ListNews data={this.state.newsList} thumbPosition="top"/>
				</AMR.Grid>
			)
)

module.exports = Index