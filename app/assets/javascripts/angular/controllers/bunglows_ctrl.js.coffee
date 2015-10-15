App.controller 'BunglowsCtrl', ['$scope', 'Bunglows', ($scope, Bunglows) ->
  $scope.propertiess = Bunglows.query()
  $scope.selectedProperty = null

  # Set the selected screencast to the one which was clicked
  $scope.showProperty = (property) ->
    $scope.selectedProperty = property
]