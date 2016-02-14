angular
	.module 'jwtApp', ['ngRoute']
	.constant 'jwturl', 'http://fdapi2testing.freelancediary.com/auth'
	.config ($httpProvider, $routeProvider) ->
		$httpProvider.interceptors.push 'authInterceptor'

		$routeProvider
			.when '/',
				templateUrl: 'partials/default.html'
				controller: 'jwtController'

