config = require "../config"
$ = require "jquery"

NewsService = {

	getList: (callback) -> 
		params = {
			key: config.apiKey,
			tag: "心理日报"
		}
		$.ajax(
			type: "get",
			url: config.apiUrl + 'yi/article-list.json',
			data: params
		).done(callback)

	getDetail: (id,type,callback) ->
		params = {
			key: config.apiKey,
			id: id,
			type: type
		}
		$.ajax(
			type: "get",
			url: config.apiUrl + 'yi/article-detail.json',
			data: params
		).done(callback)
}

module.exports = NewsService