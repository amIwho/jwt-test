describe 'Testing modules:', ->
  beforeEach ->
    module = angular.module "jwtApp"

  it 'should be registered', ->
    expect(module).not.toBe null

  describe 'Dependencies:', ->
    it 'should have no any dependencies', ->
      expect angular.module('jwtApp').requires.length
        .toBe 0

  describe 'Controllers:', ->
    beforeEach module 'jwtApp'
    describe 'jwtController:', ->
      jwtController = undefined
      $scope = {}
      beforeEach inject ($controller, $rootScope) ->
        $scope = $rootScope.$new();
        jwtController = $controller 'jwtController', {$scope: $scope}

      it 'should have hello prop', ->
          expect $scope.hello
            .toBe 'Hello'

      it 'should have obtainJWTToken method', ->
          expect $scope.obtainJWTToken
            .toBeDefined()

  describe 'Factories:', ->
    beforeEach module 'jwtApp'

    describe 'authFactory:', ->

      it 'should have authFactory',
        inject (authFactory) ->
          expect authFactory
            .not.toEqual null

      it 'should have authFactory.parseJwt method',
        inject (authFactory) ->
          console.log authFactory.parseJwt 'token'



