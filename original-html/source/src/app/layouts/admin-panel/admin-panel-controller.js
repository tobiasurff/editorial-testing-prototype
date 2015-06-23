'use strict';

/**
 * @ngdoc function
 * @name AdminController
 * @module triAngular
 * @kind function
 *
 * @description
 *
 * Handles the admin view
 */
angular.module('triAngular').
controller('AdminController', function ($scope, $element, $timeout, $mdSidenav, $mdUtil, $state) {
    $scope.toolbarShrink = undefined;

    if($state.current.data !== undefined) {
        if($state.current.data.toolbar !== undefined) {
            if($state.current.data.toolbar.shrink === true) {
                $scope.toolbarShrink = true;
            }
        }
    }
});