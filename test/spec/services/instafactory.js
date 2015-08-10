'use strict';

describe('Service: instaFactory', function () {

  // load the service's module
  beforeEach(module('carlApp'));

  // instantiate service
  var instaFactory;
  beforeEach(inject(function (_instaFactory_) {
    instaFactory = _instaFactory_;
  }));

  it('should do something', function () {
    expect(!!instaFactory).toBe(true);
  });

});
