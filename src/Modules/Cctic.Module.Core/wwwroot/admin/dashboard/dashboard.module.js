/*global angular*/
(function () {
    'use strict';

    angular
        .module('CcticAdmin.dashboard', [])
        .config(['$stateProvider', function ($stateProvider) {
            $stateProvider.state('dashboard', {
                url: '/dashboard',
                templateUrl: "/admin/dashboard-tpl"
            });
        }]);
})();