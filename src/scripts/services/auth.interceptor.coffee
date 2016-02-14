angular
    .module 'jwtApp'
    .factory 'authInterceptor', (AuthToken) ->

        request: (config) ->
            token = AuthToken.getToken()
            config.headers = config.headers || {}
            if token
                config.headers['Authorization'] = token
            config

        responseError: (res) ->
            if res.status is 403
                @request()

            