'use strict';
/* global $ */
/**
 * @ngdoc function
 * @name carlApp.controller:InstacontrollerCtrl
 * @description
 * # InstacontrollerCtrl
 * Controller of the carlApp
 */
angular.module('carlApp')
  .controller('InstaCtrl', function ($scope, instaFactory) {

    instaFactory.photoFeed();


  });
