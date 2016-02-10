angular
	.module 'jwtApp'
	.controller 'jwtController', ($scope)->
		$scope.hello = 'Hello'

		$scope.obtainJWTToken = ->
			console.log 'hello'
			return
		return