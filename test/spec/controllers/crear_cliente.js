'use strict';

describe('Controller: CrearClienteCtrl', function () {

  // load the controller's module
  beforeEach(module('gestionPruebaApp'));

  var CrearClienteCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    CrearClienteCtrl = $controller('CrearClienteCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(CrearClienteCtrl.awesomeThings.length).toBe(3);
  });
});
