(function() {
  window.App = angular.module('Bunglows', ['ngResource']);

}).call(this);
(function() {
  App.controller('BunglowsCtrl', [
    '$scope', 'Bunglows', function($scope, Bunglows) {
      $scope.propertiess = Bunglows.query();
      $scope.selectedProperty = null;
      return $scope.showProperty = function(property) {
        return $scope.selectedProperty = property;
      };
    }
  ]);

}).call(this);
(function() {
  App.factory('Bunglows', [
    '$resource', function($resource) {
      return $resource('/api/properties/:id', {
        id: '@id'
      });
    }
  ]);

}).call(this);
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//


;
