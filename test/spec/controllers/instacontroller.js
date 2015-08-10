'use strict';

describe('Controller: InstacontrollerCtrl', function () {

  // load the controller's module
  beforeEach(module('carlApp'));

  var InstacontrollerCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    InstacontrollerCtrl = $controller('InstacontrollerCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
