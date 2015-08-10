'use strict';

/**
 * @ngdoc overview
 * @name carlApp
 * @description
 * # carlApp
 *
 * Main module of the application.
 */
var app = angular
          .module('carlApp', [
            'ngAnimate',
            'ngTouch',
            'ui.router'
          ]);

app.config(function($urlRouterProvider, $stateProvider) {
  $urlRouterProvider.otherwise('/');

  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'views/main.html'
    })
    .state('insta', {
      url: '/instagram',
      templateUrl: 'views/insta.html',
      controller: 'InstaCtrl'
    });
});
