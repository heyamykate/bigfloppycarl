'use strict';

/**
 * @ngdoc function
 * @name carlApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the carlApp
 */
angular.module('carlApp')
  .controller('MainCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
