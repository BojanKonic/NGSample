app.service("Query", function ($q) {

        var service = {};
        service.Results = [];
        service.QueryText = "";
  

        service.GetResults = function ($scope) {
            var promise = getResultsFromAPI($scope);

            promise.then(
                function (payload) {
                    var jsonObject = JSON.parse(payload.body);
                    var results = jsonObject.d.query.PrimaryQueryResult.RelevantResults.Table.Rows.results;
                    angular.copy(results, service.Results);

                },
                function (error) {
                    console.log('failure getting slides for gallery');
                });
        };

        var getResultsFromAPI = function ($scope) {
            var deferred = $q.defer();
            var siteurl = _spPageContextInfo.webAbsoluteUrl;
            var executor = new SP.RequestExecutor(siteurl);
            executor.executeAsync(
                {
                    url: siteurl + "/_api/search/query?querytext='" + service.QueryText + "'",
                    method: "GET",
                    headers: { "Accept": "application/json; odata=verbose" },
                    success: function (result) { $scope.$apply(deferred.resolve(result)); },
                    error: function (result) { $scope.$apply(deferred.reject(result)); }
                });
            return deferred.promise;
        };
        return service;
    });