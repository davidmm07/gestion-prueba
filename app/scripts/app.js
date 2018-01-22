'use strict';

/**
 * @ngdoc overview
 * @name gestionPruebaApp
 * @description
 * # gestionPruebaApp
 *
 * Main module of the application.
 */
angular
  .module('gestionPruebaApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'afOAuth2',
    'treeControl',
    'ngMaterial',
    'ui.grid',
    'ui.grid.edit',
    'ui.grid.rowEdit',
    'ui.grid.cellNav',
    'ui.grid.treeView',
    'ui.grid.selection',
    'ui.grid.exporter',
    'ngStorage',
    'ngWebSocket',
    'angularMoment',
    'ui.utils.masks',
    'pascalprecht.translate'
  ])
    .run(function(amMoment) {
      amMoment.changeLocale('es');
    })
    .config(['$locationProvider','$routeProvider', function($locationProvider, $routeProvider) {
      $locationProvider.hashPrefix("");
      $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main'
      })
      .when('/notificaciones', {
        templateUrl: 'views/notificaciones.html',
        controller: 'NotificacionesCtrl',
        controllerAs: 'notificaciones'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl',
        controllerAs: 'about'
      })
      .when('/cliente', {
        templateUrl: 'views/cliente.html',
        controller: 'ClienteCtrl',
        controllerAs: 'cliente'
      })
      .when('/crear_cliente', {
        templateUrl: 'views/crear_cliente.html',
        controller: 'CrearClienteCtrl',
        controllerAs: 'crearCliente'
      })
      .when('/editar_cliente', {
        templateUrl: 'views/editar_cliente.html',
        controller: 'EditarClienteCtrl',
        controllerAs: 'editarCliente'
      })
      .otherwise({
        redirectTo: '/'
      });
  }]);
