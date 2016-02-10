angular
    .module 'jwtApp'
    .factory 'authInterceptor', (jwturl, authFactory) ->
        request: (config) ->
            config
        response: (res) ->
        	res