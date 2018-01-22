'use strict';

describe('Controller: EditarClienteCtrl', function () {

  // load the controller's module
  beforeEach(module('gestionPruebaApp'));

  var EditarClienteCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    EditarClienteCtrl = $controller('EditarClienteCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(EditarClienteCtrl.awesomeThings.length).toBe(3);
  });
});
