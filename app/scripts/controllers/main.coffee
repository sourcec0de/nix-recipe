'use strict'

angular.module('nixRecipeApp')
  .controller 'MainCtrl', ['$scope',"$http", ($scope,$http) ->
    # api_url = "https://api.nutritionix.com"
    api_url = "http://localhost:3080"

    # Init base NXQL Query
    $scope.nxql =
      appId:"4937ead8"
      appKey:"e783399958d4261be6ac582c8596bd23"
      query:null
    $scope.results = null

    $scope.search = ->
      req_url = "#{api_url}/v1_1/search"
      $http.post(req_url,$scope.nxql)
      .success((d)->
        console.log(d)
      )
      .error((e)->
        console.log(e)
      )

  ]