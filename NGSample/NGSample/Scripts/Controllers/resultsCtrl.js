app.controller("resultsCtrl", ['$scope', 'Query', function ($scope, query) {

    $scope.results = query.Results;

}]);