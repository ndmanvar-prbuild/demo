var app = angular.module('service', ['ngRoute']);

//This configures the routes and associates each route with a view and a controller
app.config(function ($routeProvider) {
    $routeProvider
        .when('/view1',
            {
                controller: 'controller',
                templateUrl: './views/view1.html'
            })
        .when('/view2',
            {
                controller: 'controller',
                templateUrl: './views/view2.html'
            })
        .otherwise({ redirectTo: '/' });
});

