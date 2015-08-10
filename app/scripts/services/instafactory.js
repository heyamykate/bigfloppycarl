'use strict';

/**
 * @ngdoc service
 * @name carlApp.instaFactory
 * @description
 * # instaFactory
 * Factory in the carlApp.
 */
angular.module('carlApp')
.factory('instaFactory', ['$http',
    function($http) {
        return {
            photoFeed: function() {
              var feed = new Instafeed({
                get: 'tagged',
                tagName: 'bigfloppycarl',
                clientId: '1e9f4471ee774f4d9f56345bfbee0dee',
                resolution: 'standard_resolution',
                sortBy: 'most-recent',
                target: 'instafeed',
                template: '<div class="instabox"><a href="{{link}}" target="_blank"><img src="{{image}}" /></a><div class="info"><p><i class="icon-comment"></i>{{caption}}</p><br><ul><li class="icon-heart">{{likes}} likes<li class="icon-chat">{{comments}} comments</ul></div></div>'
              });
              feed.run();
            }
        };
    }
]);
