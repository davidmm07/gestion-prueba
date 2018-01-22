'use strict';

/**
 * @ngdoc function
 * @name gestionPruebaApp.controller:NotificacionesCtrl
 * @description
 * # NotificacionesCtrl
 * Controller of the gestionPruebaApp
 */
angular.module('gestionPruebaApp')
  .controller('NotificacionesCtrl', function($scope, notificacion) {
    $scope.imagePath = 'images/yeoman.png';
    $scope.notificacion = notificacion;
  });
