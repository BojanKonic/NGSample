app.controller("queryCtrl", ['$scope', 'Query', function ($scope, query) {

    $scope.QueryText = query.QueryText;

    
    $scope.KeyUpEvent = function ($event) {

        
        if (query.QueryText != $scope.QueryText) {

    
            query.QueryText = $scope.QueryText;

    
            if (query.QueryText.length > 3 || query.QueryText.length == 0) {

    
                query.GetResults($scope);
            }
        }
    };

}]);