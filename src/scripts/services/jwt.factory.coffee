angular
	.module 'jwtApp'
	.factory 'Auth', (jwturl, $http) ->

		genUUID = ->
			'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace /[xy]/g, (c) ->
				r = Math.random()*16|0
				if c is 'x' then v = r else v = r&0x3|0x8
				v.toString 16
		obtainJWTtoken: ->
			$http
				method: 'POST'
				url: jwturl
				headers:
					'X-Reference': genUUID()
					'X-UTC-Timestamp': Date.now()
			.then (response) ->
				console.log response
				return response
			, (err) ->
				console.log err




