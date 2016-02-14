angular
	.module 'jwtApp'
	.controller 'jwtController', ($scope, AuthToken, Auth)->
		$scope.hello = 'Hello'
		$scope.token = ''

		$scope.obtainJWTtoken = ->
			Auth.obtainJWTtoken()
			return
		return