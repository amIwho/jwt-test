angular
	.module 'jwtApp', []
	.constant 'jwturl', 'http://fdapi2testing.freelancediary.com/auth'
	.config ($httpProvider) ->
		$httpProvider.interceptors.push 'authInterceptor'

