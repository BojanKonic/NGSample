'use strict';
var app = angular.module("ngDemoApp", []);
var SPHostUrl;
SPHostUrl = decodeURIComponent(getQueryStringParameter("SPHostUrl"));
// This code runs when the DOM is ready and creates a context object which is needed to use the SharePoint object model
$(document).ready(function () {
   

});


function getQueryStringParameter(param) {
    var params = document.URL.split("?")[1].split("&");
    var strParams = "";
    for (var i = 0; i < params.length; i = i + 1) {
        var singleParam = params[i].split("=");
        if (singleParam[0] == param) {
            return singleParam[1];
        }
    }
}