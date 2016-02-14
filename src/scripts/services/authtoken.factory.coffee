angular
	.module 'jwtApp'
	.factory 'AuthToken', ($window) ->
		getToken: ->
			$window.localStorage.getItem 'authToken'
		setToken: (token) ->
			if token
				$window.localStorage.setItem 'authToken', token
			else
				$window.localStorage.removeItem 'authToken'
