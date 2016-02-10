describe 'Testing modules:', ->
  beforeEach ->
    module = angular.module "jwtApp"

  it 'should be registered', ->
    expect(module).not.toBe null

  describe 'Dependencies:', ->
    it 'should have no any dependencies', ->
      console.log angular.module('jwtApp').requires
      expect angular.module('jwtApp').requires.length
        .toBe 0

  describe 'Controllers:', ->
    beforeEach module 'jwtApp'
    describe 'jwtController:', ->
      $controller = undefined
      controller = undefined
      $scope = {}

      beforeEach inject (_$controller_) ->
        $controller = _$controller_

      beforeEach ->
        controller = $controller 'jwtController', {$scope: $scope}

      it 'should have jwtController', ->
        expect controller
          .toBeTruthy()

      it 'should have Hello in scope.hello', ->
        expect $scope.hello
          .toBe 'Hello'


