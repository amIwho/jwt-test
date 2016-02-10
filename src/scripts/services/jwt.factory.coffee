angular
    .module 'jwtApp'
    .factory 'authFactory', ->
        parseJwt: (token) ->
            console.log token